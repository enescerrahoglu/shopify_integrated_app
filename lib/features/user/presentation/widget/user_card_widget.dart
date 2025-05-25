import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_integrated_app/core/presentation/app_images.dart';
import 'package:shopify_integrated_app/features/user/presentation/cubit/user_cubit.dart';
import 'package:shopify_integrated_app/generated/locale_keys.g.dart';

class UserCardWidget extends StatelessWidget {
  const UserCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        return Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ClipRRect(
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                      boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 0))],
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: (state.user?.firstName != null && state.user?.lastName != null)
                      ? NetworkImage(
                          'https://ui-avatars.com/api/?background=96BF48&color=fff&size=1024&name=${state.user?.firstName}+${state.user?.lastName}',
                        )
                      : const AssetImage(AppImages.defaultProfileImage) as ImageProvider,
                ),
              ],
            ),
            ClipRRect(
              child: Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 0))],
                ),
                child: Column(
                  children: [
                    Text(
                      ('${state.user?.firstName ?? ''} ${state.user?.lastName ?? ''}'),
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      state.user?.email ?? '',
                      style: Theme.of(
                        context,
                      ).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer),
                    ),
                    Divider(indent: 10, endIndent: 10),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(
                          context,
                        ).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer),
                        children: [
                          TextSpan(text: LocaleKeys.joined_on_prefix.tr()),
                          TextSpan(
                            text: DateFormat(
                              'd MMMM yyyy HH:mm',
                            ).format((state.user?.createdAt ?? DateTime.now()).toLocal()),
                          ),
                          TextSpan(text: LocaleKeys.joined_on_suffix.tr()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
