import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzallc_task/core/core.dart';
import 'package:hamzallc_task/l10n/l10n.dart';
import 'package:hamzallc_task/modules/articles/articles.dart';
import 'package:hamzallc_task/modules/settings/settings.dart';
import 'package:hamzallc_task/routes/routes.dart';
import 'package:hamzallc_task/utils/utils.dart';
import 'package:hive_flutter/hive_flutter.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsStorage = getIt.get<SettingsStorage>();
    return MultiBlocProvider(
      providers: [
        BlocProvider<ArticlesCubit>(
          create: (BuildContext context) {
            return ArticlesCubit(
              articlesService: getIt.get<ArticlesService>(),
            )..getMostViewedArticles();
          },
        ),
      ],
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: ValueListenableBuilder<Box<dynamic>>(
          valueListenable:
              Hive.box<dynamic>(AppConstants.preferences).listenable(),
          builder: (context, value, child) {
            final isDarkMode = settingsStorage.isDarkMode();
            return MaterialApp.router(
              routerConfig: getIt.get<AppPages>().router,
              debugShowCheckedModeBanner: false,
              locale: Locale(settingsStorage.localeName),
              theme: isDarkMode ? darkTheme : lightTheme,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
            );
          },
        ),
      ),
    );
  }
}
