part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const initial = Paths.initial;
  static const home = Paths.home;
  static const biometrics = Paths.biometrics;
  static const appSettings = Paths.appSettings;
}

abstract class Paths {
  Paths._();

  static const String initial = '/';
  static const String home = '/';
  static const biometrics = '/biometrics';
  static const String appSettings = '/app_settings';
}
