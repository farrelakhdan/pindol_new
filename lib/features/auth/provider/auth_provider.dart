import 'package:flutter/material.dart';
import 'package:pindol_new/core/state/finite_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  AppState state = AppState.initial;

  void controllerClear() {
    emailController.clear();
    passwordController.clear();
    notifyListeners();
  }

  // Fungsi fungsi untuk validasi inputan
  String? validateEmail(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return "Username tidak boleh kosong";
    }

    // if (value.length < 16) {
    //   return "NIK anda tidak valid";
    // }

    // const regex = r'^[0-9]+$';
    // if (!RegExp(regex).hasMatch(value)) {
    //   return 'Hanya boleh mengandung angka';
    // }

    return null; // validasi berhasil
  }

  String? validatePassword(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return "Password tidak boleh kosong";
    }

    return null; // validasi berhasil
  }

  Future<void> login(BuildContext context) async {
    state = AppState.loading;
    notifyListeners();

    if (formKey.currentState!.validate()) {
      try {
        if (context.mounted) {
          SharedPreferences preferences = await SharedPreferences.getInstance();

          await Future.delayed(const Duration(seconds: 3));
          // final response = await AuthService()
          //     .auth(emailController.text, passwordController.text);

          preferences.setBool("isLoggedIn", true);

          controllerClear();
          state = AppState.loaded;
          notifyListeners();
        }
      } catch (e) {
        state = AppState.failed;
        notifyListeners();
      }
    } else {
      state = AppState.initial;
      notifyListeners();
    }
  }
}
