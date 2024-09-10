import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/font_size.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';
import 'package:pindol_new/core/state/finite_state.dart';
import 'package:pindol_new/core/widgets/button.dart';
import 'package:pindol_new/features/auth/provider/register_provider.dart';
import 'package:pindol_new/features/auth/widget/custom_text_form_field.dart';
import 'package:pindol_new/features/auth/widget/login_button.dart';
import 'package:pindol_new/features/auth/widget/password_widget.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:
            Consumer<RegisterProvider>(builder: (context, registerProvider, _) {
          return Form(
            key: registerProvider.formKey,
            child: ListView(
              children: [
                Image.asset(
                  "assets/images/reghead.png",
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.255,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Register",
                        style: TextStyle(
                          fontSize: AppFontSize.heading2,
                          fontWeight: AppFontWeight.bodyBold,
                        ),
                      ),
                      const Text(
                        "Make Your Account",
                        style: TextStyle(
                          fontSize: AppFontSize.bodyLarge,
                          fontWeight: AppFontWeight.bodyBold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextFormField(
                        textInputAction: TextInputAction.next,
                        validator: (value) =>
                            registerProvider.validateUsername(value, context),
                        controller: registerProvider.usernameController,
                        enable: true,
                        hint: "Masukan Username Anda..",
                        required: true,
                        title: 'Username',
                        prefix: "",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextFormField(
                        textInputAction: TextInputAction.next,
                        validator: (value) =>
                            registerProvider.validateUsername(value, context),
                        controller: registerProvider.namaController,
                        enable: true,
                        hint: "Masukan Nama Anda..",
                        required: true,
                        title: 'Nama',
                        prefix: "",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextFormField(
                        textInputAction: TextInputAction.next,
                        validator: (value) =>
                            registerProvider.validateEmail(value, context),
                        controller: registerProvider.emailController,
                        enable: true,
                        hint: "Masukan Email Anda..",
                        required: true,
                        title: 'Email',
                        prefix: "",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextFormField(
                        textInputAction: TextInputAction.next,
                        validator: (value) =>
                            registerProvider.validatePhone(value, context),
                        controller: registerProvider.phoneController,
                        enable: true,
                        hint: "Masukan Nomor Telepon Anda..",
                        required: true,
                        title: 'Nomor Telepon',
                        prefix: "",
                        keyboardType: TextInputType.phone,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      PasswordWidget(
                        textInputAction: TextInputAction.send,
                        validator: (value) =>
                            registerProvider.validatePassword(value, context),
                        controller: registerProvider.passwordController,
                        enable: true,
                        hint: "Masukan Kata Sandi Anda..",
                        title: 'Kata Sandi',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      PasswordWidget(
                        textInputAction: TextInputAction.send,
                        validator: (value) =>
                            registerProvider.validatePassword(value, context),
                        controller: registerProvider.confirmPasswordController,
                        enable: true,
                        hint: "Masukan Kata Sandi Anda..",
                        title: 'Konfirmasi Kata Sandi',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: CustomButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                title: "Back"),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: registerProvider.state == AppState.loading
                                ? const Center(
                                    child: CircularProgressIndicator(),
                                  )
                                : LoginButton(
                                    onPressed: () async {
                                      await registerProvider.register(context);
                                      if (context.mounted) {
                                        if (registerProvider.state ==
                                            AppState.loaded) {
                                          Navigator.pop(context);
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
                                    title: 'Register',
                                  ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
