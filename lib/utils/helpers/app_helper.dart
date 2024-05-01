import 'dart:async';

import 'package:background_fetch/background_fetch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hamzallc_task/core/core.dart';
import 'package:hamzallc_task/modules/articles/articles.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AppHelper {
  const AppHelper._();

  static Future<void> configureApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    await _loadEnv();
    await configureDependencies();
    await _initHive();
  }

  static Future<void> _initHive() async {
    final hiveManager = getIt.get<HiveManager>();
    await Hive.initFlutter();
    await hiveManager.initializeCacheBox();
    await hiveManager.initializePrefsBox();
    await hiveManager.initializeSettingsBox();
    syncArticlesInBackground();
  }

  static Future<void> _loadEnv() async {
    try {
      await dotenv.load();
    } catch (e) {
      logger.e(e);
    }
  }

  static void syncArticlesInBackground() {
    final articlesService = getIt.get<ArticlesService>();
    BackgroundFetch.configure(
      BackgroundFetchConfig(
        minimumFetchInterval: 30,
        stopOnTerminate: false,
        enableHeadless: true,
        requiresBatteryNotLow: false,
        requiresCharging: false,
        requiresStorageNotLow: true,
        requiresDeviceIdle: false,
        requiredNetworkType: NetworkType.ANY,
      ),
      (String taskId) async {
        final result = await articlesService.getMostViewedArticles();
        result.fold(
          (l) {},
          (articles) {
            eventBus.fire(ArticlesFetchedBackground(articles));
          },
        );
        BackgroundFetch.finish(taskId);
      },
    );
  }
}
