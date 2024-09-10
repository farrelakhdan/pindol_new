import 'package:flutter/material.dart';
import 'package:pindol_new/core/state/finite_state.dart';

class RegisterProvider extends ChangeNotifier {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController namaController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  AppState state = AppState.initial;

  void controllerClear() {
    usernameController.clear();
    namaController.clear();
    emailController.clear();
    phoneController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
    notifyListeners();
  }

  // Fungsi fungsi untuk validasi inputan
  String? validateUsername(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return "Username tidak boleh kosong";
    }

    return null; // validasi berhasil
  }

  String? validateEmail(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return "Username tidak boleh kosong";
    }

    const regex = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    if (!RegExp(regex).hasMatch(value)) {
      return 'Format email tidak valid';
    }

    return null; // validasi berhasil
  }

  String? validatePhone(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return "Username tidak boleh kosong";
    }

    const regex = r'^[0-9]+$';
    if (!RegExp(regex).hasMatch(value)) {
      return 'Hanya boleh mengandung angka';
    }

    return null; // validasi berhasil
  }

  String? validatePassword(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return "Password tidak boleh kosong";
    }

    return null; // validasi berhasil
  }

  Future<void> register(BuildContext context) async {
    state = AppState.loading;
    notifyListeners();

    if (formKey.currentState!.validate()) {
      try {
        if (context.mounted) {
          await Future.delayed(const Duration(seconds: 3));
          // final response = await AuthService()
          //     .auth(emailController.text, passwordController.text);

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
