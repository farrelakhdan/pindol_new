import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';
import 'package:pindol_new/features/auth/widget/custom_text_form_field.dart';
import 'package:pindol_new/features/auth/widget/login_button.dart';
import 'package:pindol_new/features/toko/provider/daftar_toko_provider.dart';
import 'package:pindol_new/features/toko/views/toko_profile_screen.dart';
import 'package:provider/provider.dart';

class DaftarTokoScreen extends StatefulWidget {
  const DaftarTokoScreen({super.key});

  @override
  State<DaftarTokoScreen> createState() => _DaftarTokoScreenState();
}

class _DaftarTokoScreenState extends State<DaftarTokoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Consumer<DaftarTokoProvider>(builder: (context, tokoProvider, _) {
            return Focus(
              key: tokoProvider.key,
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Daftar",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: AppFontWeight.bodyBold,
                        ),
                      ),
                      Text(
                        "Daftarkan tokomu",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: AppFontWeight.bodyRegular),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextFormField(
                    prefix: "",
                    textInputAction: TextInputAction.next,
                    validator: (value) =>
                        tokoProvider.validateNama(value, context),
                    controller: tokoProvider.namaController,
                    enable: true,
                    required: true,
                    title: "Nama Toko",
                    hint: "Masukkan nama toko anda",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFormField(
                    prefix: "",
                    textInputAction: TextInputAction.next,
                    validator: (value) =>
                        tokoProvider.validateAlamat(value, context),
                    controller: tokoProvider.alamatController,
                    enable: true,
                    required: true,
                    title: "Alamat Toko",
                    hint: "Masukkan alamat toko anda",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFormField(
                    prefix: "",
                    textInputAction: TextInputAction.next,
                    validator: (value) =>
                        tokoProvider.validateEmail(value, context),
                    controller: tokoProvider.emailController,
                    enable: true,
                    required: true,
                    title: "E-Mail Toko",
                    hint: "Masukkan email toko anda",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFormField(
                    prefix: "",
                    textInputAction: TextInputAction.next,
                    validator: (value) =>
                        tokoProvider.validateKategori(value, context),
                    controller: tokoProvider.kategoriController,
                    enable: true,
                    required: true,
                    title: "Kategori Toko",
                    hint: "Masukkan kategori toko anda",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFormField(
                    prefix: "",
                    textInputAction: TextInputAction.next,
                    validator: (value) =>
                        tokoProvider.validateDeskripsi(value, context),
                    controller: tokoProvider.deskripsiController,
                    enable: true,
                    required: true,
                    title: "Deskripsi Toko",
                    hint: "Masukkan deskripsi toko anda",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  LoginButton(
                      onPressed: () {
                        tokoProvider.clearController();
                        Navigator.of(context).pop();
                        Navigator.of(context).pushReplacement(
                            CupertinoPageRoute(
                                builder: (context) =>
                                    const TokoProfileScreen()));
                      },
                      title: "Daftarkan Toko")
                ],
              ),
            );
          }),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: const Color(0xffE0E5EC),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(1),
                  blurRadius: 6,
                  offset: const Offset(
                      -2, -2), // Arahkan ke kiri (-x) dan atas (-y)
                  spreadRadius: 1,
                ),
                // Bayangan untuk bawah dan kanan (warna hitam)
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 6,
                  offset: const Offset(
                      2, 2), // Arahkan ke kanan (+x) dan bawah (+y)
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: const Color(0xffE0E5EC),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(1),
                            blurRadius: 6,
                            offset: const Offset(
                                -2, -2), // Arahkan ke kiri (-x) dan atas (-y)
                            spreadRadius: 1,
                          ),
                          // Bayangan untuk bawah dan kanan (warna hitam)
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 6,
                            offset: const Offset(
                                2, 2), // Arahkan ke kanan (+x) dan bawah (+y)
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: const Color(0xffE0E5EC),
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Icon(
                          BootstrapIcons.chevron_left,
                          size: 19,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
