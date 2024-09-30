import 'package:flutter/material.dart';

class DaftarTokoProvider extends ChangeNotifier {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  TextEditingController namaController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController kategoriController = TextEditingController();
  TextEditingController deskripsiController = TextEditingController();
  TextEditingController lokasiController = TextEditingController();
  TextEditingController jamController = TextEditingController();

  String? validateNama(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return "Nama tidak boleh kosong";
    }

    return null; // validasi berhasil
  }

  String? validateAlamat(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return "Nama tidak boleh kosong";
    }

    return null; // validasi berhasil
  }

  String? validateEmail(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return "Email tidak boleh kosong";
    }

    const regex = r'^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$';

    if (!RegExp(regex).hasMatch(value)) {
      return 'Masukkan email yang valid';
    }

    return null; // validasi berhasil
  }

  String? validateKategori(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return "Nama tidak boleh kosong";
    }

    return null; // validasi berhasil
  }

  String? validateDeskripsi(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return "Nama tidak boleh kosong";
    }

    return null; // validasi berhasil
  }

  void clearController() {
    namaController.clear();
    alamatController.clear();
    emailController.clear();
    kategoriController.clear();
    deskripsiController.clear();
    notifyListeners();
  }
}
