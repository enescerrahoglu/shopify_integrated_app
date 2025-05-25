import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_integrated_app/features/navigation/presentation/cubit/navigation_cubit.dart';
import 'package:shopify_integrated_app/features/product/presentation/cubit/product_cubit.dart';
import 'package:shopify_integrated_app/features/user/presentation/cubit/user_cubit.dart';

class CustomMultiBlocProvider extends StatelessWidget {
  final Widget child;
  const CustomMultiBlocProvider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NavigationCubit()),
        BlocProvider(create: (context) => UserCubit()),
        BlocProvider(create: (context) => ProductCubit()),
      ],
      child: child,
    );
  }
}
