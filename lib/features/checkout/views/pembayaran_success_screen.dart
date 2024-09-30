import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';
import 'package:pindol_new/features/auth/widget/login_button.dart';
import 'package:pindol_new/features/navbar/views/navbar_screen.dart';

class PembayaranSuccessScreen extends StatelessWidget {
  const PembayaranSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE0E5EC),
      body: Column(
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/check.png",
                width: 200,
                height: 200,
              ),
              const Text(
                "Pembayaran Berhasil",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: AppFontWeight.bodyBold,
                    color: Color(0xffD84141)),
                textAlign: TextAlign.center,
              ),
            ],
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: LoginButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      CupertinoPageRoute(
                          builder: (context) => const NavbarScreen()),
                      (route) => false);
                },
                title: "Kembali Ke Homepage"),
          )
        ],
      ),
    );
  }
}
