import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/font_size.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';
import 'package:pindol_new/core/state/finite_state.dart';
import 'package:pindol_new/features/auth/provider/auth_provider.dart';
import 'package:pindol_new/features/auth/views/register_screen.dart';
import 'package:pindol_new/features/auth/widget/auth_header_widget.dart';
import 'package:pindol_new/features/auth/widget/custom_text_form_field.dart';
import 'package:pindol_new/features/auth/widget/login_button.dart';
import 'package:pindol_new/features/auth/widget/password_widget.dart';
import 'package:provider/provider.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer<AuthProvider>(builder: (context, authProvider, _) {
          return Form(
            key: authProvider.formKey,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              shrinkWrap: true,
              children: [
                const AuthHeaderWidget(),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  textInputAction: TextInputAction.next,
                  validator: (value) =>
                      authProvider.validateEmail(value, context),
                  controller: authProvider.emailController,
                  enable: true,
                  hint: "Masukan Username / Email Anda..",
                  required: true,
                  title: 'Username / Email',
                  prefix: "",
                ),
                const SizedBox(
                  height: 20,
                ),
                PasswordWidget(
                  textInputAction: TextInputAction.send,
                  validator: (value) =>
                      authProvider.validatePassword(value, context),
                  controller: authProvider.passwordController,
                  enable: true,
                  hint: "Masukan Kata Sandi Anda..",
                  title: 'Kata Sandi',
                ),
                const SizedBox(
                  height: 64,
                ),
                authProvider.state == AppState.loading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : LoginButton(
                        onPressed: () async {
                          await authProvider.login(context);
                          if (context.mounted) {
                            if (authProvider.state == AppState.loaded) {
                              // Navigator.pop(context);
                              // context
                              //     .read<MenuBarProvider>()
                              //     .setSelectedIndex(context, 0);
                              // Navigator.of(context).pushReplacement(
                              //   CupertinoPageRoute(
                              //     builder: (BuildContext context) =>
                              //         const MenuBarScreen(),
                              //   ),
                              // );
                            }
                          }
                        },
                        title: 'Login',
                      ),
                const SizedBox(
                  height: 27,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    const Divider(),
                    Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 3,
                            offset: const Offset(0, 1),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: const Text(
                        "Or",
                        style: TextStyle(
                            fontSize: AppFontSize.bodySmall,
                            fontWeight: AppFontWeight.bodyRegular,
                            color: Color(0xff737373)),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 27,
                ),
                LoginButton(
                  onPressed: () {
                    Navigator.of(context).push(CupertinoPageRoute(
                        builder: (context) => const RegisterScreen()));
                  },
                  title: "Daftar",
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
