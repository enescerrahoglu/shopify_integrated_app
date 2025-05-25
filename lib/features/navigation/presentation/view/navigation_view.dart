import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_integrated_app/features/navigation/presentation/cubit/navigation_cubit.dart';
import 'package:shopify_integrated_app/features/store/presentation/view/store_view.dart';
import 'package:shopify_integrated_app/features/user/presentation/view/profile_view.dart';
import 'package:shopify_integrated_app/generated/locale_keys.g.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({super.key});

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return Scaffold(
          body: IndexedStack(index: state.selectedIndex, children: [StoreView(), ProfileView()]),
          bottomNavigationBar: CupertinoTabBar(
            iconSize: 36,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            currentIndex: state.selectedIndex,
            onTap: (index) {
              context.read<NavigationCubit>().changeIndex(index: index);
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.store), label: LocaleKeys.store.tr()),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: LocaleKeys.profile.tr()),
            ],
          ),
        );
      },
    );
  }
}
