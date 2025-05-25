import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shopify_integrated_app/core/locator/locator.dart';
import 'package:shopify_integrated_app/core/services/shared_preferences_service.dart';
import 'package:shopify_integrated_app/core/utils/custom_multi_bloc_provider.dart';
import 'package:shopify_integrated_app/core/utils/localization/localization_manager.dart';
import 'package:shopify_integrated_app/core/utils/router/router_manager.dart';
import 'package:shopify_integrated_app/core/utils/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  await EasyLocalization.ensureInitialized();
  await SharedPreferencesService.instance.init();
  configureDependencies();

  runApp(LocalizationManager(child: CustomMultiBlocProvider(child: const MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Shopify Integrated App',
      theme: lightTheme,
      darkTheme: darkTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routerConfig: RouterManager.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
