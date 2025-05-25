import 'package:shopify_integrated_app/core/utils/router/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:shopify_integrated_app/features/product/data/dto/product/product_data_dto.dart';
import 'package:shopify_integrated_app/features/product/presentation/view/product_detail_view.dart';
import 'package:shopify_integrated_app/features/store/presentation/view/store_view.dart';
import 'package:shopify_integrated_app/features/navigation/presentation/view/navigation_view.dart';
import 'package:shopify_integrated_app/features/splash/presentation/view/splash_view.dart';
import 'package:shopify_integrated_app/features/user/presentation/view/login_view.dart';
import 'package:shopify_integrated_app/features/user/presentation/view/profile_view.dart';

final class RouterManager {
  RouterManager._();
  static GoRouter get router => _routes;

  static final _routes = GoRouter(
    initialLocation: Routes.initial.path,
    routes: [
      GoRoute(
        path: Routes.initial.path,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const SplashView(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return child;
            },
          );
        },
      ),
      GoRoute(path: Routes.navigation.path, builder: (context, state) => const NavigationView()),
      GoRoute(path: Routes.login.path, builder: (context, state) => const LoginView()),
      GoRoute(path: Routes.profile.path, builder: (context, state) => const ProfileView()),
      GoRoute(path: Routes.store.path, builder: (context, state) => const StoreView()),
      GoRoute(
        path: Routes.productDetail.path,
        builder: (context, state) => ProductDetailView(product: state.extra as ProductDataDto),
      ),
    ],
  );

  static void restartApp() {
    _routes.go(Routes.initial.path);
  }
}
