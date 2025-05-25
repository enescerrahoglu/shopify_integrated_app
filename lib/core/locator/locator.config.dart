// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shopify_integrated_app/core/network/api_client.dart' as _i1052;
import 'package:shopify_integrated_app/features/product/data/data-source/product_data_source.dart'
    as _i1056;
import 'package:shopify_integrated_app/features/product/domain/repository/product_repository.dart'
    as _i922;
import 'package:shopify_integrated_app/features/user/data/data-source/user_data_source.dart'
    as _i965;
import 'package:shopify_integrated_app/features/user/domain/repository/user_repository.dart'
    as _i933;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i1052.APIClient>(() => _i1052.APIClient());
    gh.factory<_i965.UserDataSource>(
      () => _i965.UserDataSource(apiClient: gh<_i1052.APIClient>()),
    );
    gh.factory<_i1056.ProductDataSource>(
      () => _i1056.ProductDataSource(apiClient: gh<_i1052.APIClient>()),
    );
    gh.factory<_i933.UserRepository>(
      () => _i933.UserRepository(userDataSource: gh<_i965.UserDataSource>()),
    );
    gh.factory<_i922.ProductRepository>(
      () => _i922.ProductRepository(
        productDataSource: gh<_i1056.ProductDataSource>(),
      ),
    );
    return this;
  }
}
