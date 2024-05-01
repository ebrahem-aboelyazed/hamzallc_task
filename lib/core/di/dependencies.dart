import 'package:get_it/get_it.dart';
import 'package:hamzallc_task/core/core.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
)
Future<void> configureDependencies() => getIt.init();
