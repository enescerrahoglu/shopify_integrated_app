import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shopify_integrated_app/core/enum/status_type.dart';
import 'package:shopify_integrated_app/core/services/shared_preferences_service.dart';
import 'package:shopify_integrated_app/core/utils/router/routes.dart';
import 'package:shopify_integrated_app/features/navigation/presentation/cubit/navigation_cubit.dart';
import 'package:shopify_integrated_app/features/user/presentation/cubit/user_cubit.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Future<void> _init() async {
    String authToken = SharedPreferencesService.instance.getData<String>(PreferenceKey.authToken) ?? '';
    await Future.wait([context.read<UserCubit>().checkUser(accessToken: authToken)]);
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _init();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserCubit, UserState>(
      listener: (context, state) {
        if (state.checkUserStatus == StatusType.loaded && state.user != null) {
          context.read<NavigationCubit>().changeIndex(index: 0);
          context.go(Routes.navigation.path);
        } else if (state.checkUserStatus == StatusType.error) {
          context.go(Routes.login.path);
        }
      },
      child: Scaffold(body: Center(child: CircularProgressIndicator())),
    );
  }
}
