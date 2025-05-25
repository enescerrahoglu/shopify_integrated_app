import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shopify_integrated_app/core/enum/status_type.dart';
import 'package:shopify_integrated_app/core/services/shared_preferences_service.dart';
import 'package:shopify_integrated_app/core/utils/localization/localization_manager.dart';
import 'package:shopify_integrated_app/core/utils/router/routes.dart';
import 'package:shopify_integrated_app/features/user/presentation/cubit/user_cubit.dart';
import 'package:shopify_integrated_app/features/user/presentation/widget/user_card_widget.dart';
import 'package:shopify_integrated_app/generated/locale_keys.g.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: const Text(LocaleKeys.profile).tr()),
          body: CustomScrollView(
            physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
            slivers: [
              CupertinoSliverRefreshControl(
                onRefresh: () async {
                  context.read<UserCubit>().resetState((state) => state.copyWith(checkUserStatus: StatusType.initial));
                  String accessToken = SharedPreferencesService.instance.getData(PreferenceKey.authToken) ?? '';
                  await context.read<UserCubit>().checkUser(accessToken: accessToken);
                },
              ),
              SliverToBoxAdapter(child: UserCardWidget()),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    _buildTile(
                      title: LocaleKeys.phone_number.tr(),
                      icon: Icons.phone,
                      subtitleString: state.user?.phone ?? LocaleKeys.not_available.tr(),
                    ),
                    _buildTile(
                      title: LocaleKeys.address.tr(),
                      icon: Icons.pin_drop_rounded,
                      subtitle: RichText(
                        text: TextSpan(
                          style: Theme.of(
                            context,
                          ).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer),
                          children: [
                            ...(() {
                              final addressParts = [
                                state.user?.defaultAddress?.address1,
                                state.user?.defaultAddress?.address2,
                                state.user?.defaultAddress?.province,
                                state.user?.defaultAddress?.city,
                                state.user?.defaultAddress?.country,
                                state.user?.defaultAddress?.zip,
                              ].where((part) => (part ?? '').isNotEmpty).toList();

                              if (addressParts.isEmpty) {
                                return [TextSpan(text: LocaleKeys.not_available.tr())];
                              }

                              return List<TextSpan>.generate(
                                addressParts.length,
                                (index) => TextSpan(
                                  text: index < addressParts.length - 1
                                      ? '${addressParts[index]}, '
                                      : addressParts[index],
                                ),
                              );
                            })(),
                          ],
                        ),
                      ),
                    ),
                    _buildTile(
                      title: LocaleKeys.language.tr(),
                      icon: Icons.language,
                      subtitleString: context.locale.languageCode == 'en' ? Language.en.label : Language.tr.label,
                      onTap: () {
                        if (context.locale == const Locale('en')) {
                          context.setLocale(const Locale('tr'));
                        } else {
                          context.setLocale(const Locale('en'));
                        }
                      },
                    ),
                    _buildTile(
                      title: LocaleKeys.logout.tr(),
                      icon: Icons.logout,
                      titleColor: Colors.red,
                      onTap: () {
                        context.read<UserCubit>().logout();
                        context.go(Routes.login.path);
                      },
                    ),
                  ]),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTile({
    String? title,
    IconData? icon,
    VoidCallback? onTap,
    String? subtitleString,
    Widget? subtitle,
    Color? titleColor,
  }) {
    return Column(
      children: [
        ListTile(
          tileColor: Theme.of(context).colorScheme.primaryContainer,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          leading: Icon(icon, color: titleColor ?? Theme.of(context).colorScheme.primary),
          title: title == null
              ? null
              : Text(
                  title,
                  style:
                      ((subtitleString == null && subtitle == null)
                              ? Theme.of(context).textTheme.titleMedium
                              : Theme.of(context).textTheme.titleSmall)
                          ?.copyWith(
                            color: titleColor ?? Theme.of(context).colorScheme.primary,
                            fontWeight: (subtitleString == null && subtitle == null)
                                ? FontWeight.normal
                                : FontWeight.bold,
                          ),
                ),
          subtitle: (subtitle == null && subtitleString == null)
              ? null
              : (subtitle == null && subtitleString != null)
              ? Text(
                  subtitleString,
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer),
                )
              : (subtitle != null)
              ? subtitle
              : null,
          trailing: onTap == null ? null : const Icon(Icons.chevron_right),
          onTap: onTap == null ? null : () => onTap.call(),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
