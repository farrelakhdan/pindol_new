import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';
import 'package:pindol_new/features/auth/widget/login_button.dart';
import 'package:pindol_new/features/toko/views/daftar_toko_screen.dart';

class CekTokoScreen extends StatelessWidget {
  const CekTokoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                const Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Anda belum mendaftarkan toko",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: AppFontWeight.bodyBold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Wahhh ternyata belum daftar ya? ayo buruan daftarkan tokomu, dan berjualan sepuasnya!",
                      style: TextStyle(
                          fontSize: 12, fontWeight: AppFontWeight.bodyRegular),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: LoginButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                              builder: (context) => const DaftarTokoScreen()),
                        );
                      },
                      title: "Daftar"),
                )
              ],
            ),
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
      ),
    );
  }
}
