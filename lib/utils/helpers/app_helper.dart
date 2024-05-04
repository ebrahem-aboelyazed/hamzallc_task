import 'dart:async';

import 'package:background_fetch/background_fetch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hamzallc_task/core/core.dart';
import 'package:hamzallc_task/modules/articles/articles.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// A helper class for configuring the application
/// and performing background tasks.
class AppHelper {
  const AppHelper._();

  /// Configures the application.
  ///
  /// Ensures the Flutter widgets are initialized, loads environment variables,
  /// configures dependencies, initializes Hive database, and syncs articles
  /// in the background.
  static Future<void> configureApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    await _loadEnv();
    await configureDependencies();
    await _initHive();
  }

  /// Initializes the Hive database.
  ///
  /// Initializes Hive database and its boxes for caching, credentials,
  /// preferences, and settings.
  /// Also triggers background article synchronization.
  static Future<void> _initHive() async {
    final hiveManager = getIt.get<HiveManager>();
    await Hive.initFlutter();
    await hiveManager.initializeCacheBox();
    await hiveManager.initializeCredentialsBox();
    await hiveManager.initializePrefsBox();
    await hiveManager.initializeSettingsBox();
    syncArticlesInBackground();
  }

  /// Loads environment variables.
  ///
  /// Loads environment variables from the .env file.
  static Future<void> _loadEnv() async {
    try {
      await dotenv.load();
    } catch (e) {
      logger.e(e);
    }
  }

  /// Syncs articles in the background.
  ///
  /// Configures and starts background task to fetch most viewed articles
  /// periodically and fires an event with fetched articles.
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
