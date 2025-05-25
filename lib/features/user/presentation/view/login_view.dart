import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shopify_integrated_app/common/components/custom_button.dart';
import 'package:shopify_integrated_app/common/components/custom_text_field.dart';
import 'package:shopify_integrated_app/core/enum/status_type.dart';
import 'package:shopify_integrated_app/core/presentation/app_images.dart';
import 'package:shopify_integrated_app/core/presentation/regular_expressions.dart';
import 'package:shopify_integrated_app/core/utils/router/routes.dart';
import 'package:shopify_integrated_app/features/user/domain/model/request/login/login_request_model.dart';
import 'package:shopify_integrated_app/features/user/presentation/cubit/user_cubit.dart';
import 'package:shopify_integrated_app/generated/locale_keys.g.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _emailTextEditingController;
  late final TextEditingController _passwordTextEditingController;
  late final FocusNode _focusNode;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    _focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(LocaleKeys.login).tr()),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                spacing: 50,
                children: [
                  Image.asset(AppImages.shopify, width: MediaQuery.of(context).size.width * 0.35),
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      spacing: 10,
                      children: [
                        CustomTextField(
                          autocorrect: false,
                          prefixIcon: Icons.mail,
                          isHintLabel: false,
                          controller: _emailTextEditingController,
                          hintText: LocaleKeys.email.tr(),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          onFieldSubmitted: (p0) {
                            _focusNode.requestFocus();
                          },
                          validator: _validateEmail,
                        ),
                        CustomTextField(
                          prefixIcon: Icons.lock,
                          isHintLabel: false,
                          controller: _passwordTextEditingController,
                          hintText: LocaleKeys.password.tr(),
                          obscureText: true,
                          focusNode: _focusNode,
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          onFieldSubmitted: (p0) {
                            _submit();
                          },
                          validator: _validatePassword,
                        ),
                        BlocConsumer<UserCubit, UserState>(
                          listener: (context, state) {
                            _listener(context, state);
                          },
                          builder: (context, state) {
                            return CustomButton(
                              isLoading: state.loginStatus == StatusType.loading,
                              padding: EdgeInsets.symmetric(vertical: 0),
                              borderRadius: BorderRadius.circular(100),
                              onPressed: _submit,
                              child: Text(
                                LocaleKeys.login,
                                style: Theme.of(
                                  context,
                                ).textTheme.titleMedium?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                              ).tr(),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: GestureDetector(
              onTap: () {
                try {
                  launchUrl(Uri.parse('https://www.enescerrahoglu.com'), mode: LaunchMode.externalApplication);
                } catch (e) {
                  debugPrint(e.toString());
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(children: [Text(LocaleKeys.developed_by).tr(), Text(LocaleKeys.my_website).tr()]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return LocaleKeys.email_required.tr();
    }

    if (!RegularExpressions.email.hasMatch(value)) {
      return LocaleKeys.invalid.tr();
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return LocaleKeys.password_required.tr();
    }

    // if (!RegularExpressions.password.hasMatch(value)) {
    //   return LocaleKeys.invalid.tr();
    // }
    return null;
  }

  void _submit() {
    if (_formKey.currentState?.validate() ?? false) {
      debugPrint('Form validation succeded');
      context.read<UserCubit>().login(
        loginRequestModel: LoginRequestModel(
          email: _emailTextEditingController.text.trim().toLowerCase(),
          password: _passwordTextEditingController.text.trim(),
        ),
      );
    } else {
      debugPrint('Form validation failed');
    }
  }

  void _listener(BuildContext context, UserState state) {
    if (state.loginStatus == StatusType.loaded) {
      context.go(Routes.initial.path);
    } else if (state.loginStatus == StatusType.error) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            state.errorMessage ?? LocaleKeys.something_went_wrong.tr(),
            style: TextStyle(color: Colors.white),
          ),
          duration: const Duration(seconds: 2),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
