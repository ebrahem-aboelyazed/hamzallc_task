// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../modules/articles/articles.dart' as _i12;
import '../../modules/articles/services/articles_service_impl.dart' as _i13;
import '../../modules/settings/services/settings_storage.dart' as _i8;
import '../../routes/app_pages.dart' as _i5;
import '../api/local/api_cache_manager.dart' as _i6;
import '../api/local/hive_manager.dart' as _i4;
import '../api/remote/base_api_impl.dart' as _i11;
import '../api/tokens/token_repository.dart' as _i9;
import '../api/tokens/token_storage.dart' as _i7;
import '../core.dart' as _i10;
import 'register_module.dart' as _i14;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.Dio>(() => registerModule.dio);
    gh.singleton<_i4.HiveManager>(() => _i4.HiveManager());
    gh.singleton<_i5.AppPages>(() => _i5.AppPages());
    gh.lazySingleton<_i6.ApiCacheManager>(() => _i6.ApiCacheManager());
    gh.lazySingleton<_i7.TokenStorage>(() => _i7.TokenStorage());
    gh.lazySingleton<_i8.SettingsStorage>(() => _i8.SettingsStorage());
    gh.lazySingleton<_i9.TokenRepository>(() => _i9.TokenRepository(
          gh<_i10.TokenStorage>(),
          gh<_i3.Dio>(),
        ));
    await gh.singletonAsync<_i10.BaseApi>(
      () {
        final i = _i11.BaseApiImpl(
          gh<_i3.Dio>(),
          gh<_i10.ApiCacheManager>(),
          gh<_i10.TokenRepository>(),
          gh<_i10.TokenStorage>(),
        );
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    gh.lazySingleton<_i12.ArticlesService>(
        () => _i13.ArticlesServiceImpl(gh<_i10.BaseApi>()));
    return this;
  }
}

class _$RegisterModule extends _i14.RegisterModule {}
