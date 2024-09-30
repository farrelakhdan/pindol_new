import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/colors.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';

class MetodePembayaranWidget extends StatefulWidget {
  const MetodePembayaranWidget({super.key});

  @override
  State<MetodePembayaranWidget> createState() => _MetodePembayaranWidgetState();
}

class _MetodePembayaranWidgetState extends State<MetodePembayaranWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xffE0E5EC),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(1),
            blurRadius: 6,
            offset: const Offset(-2, -2), // Arahkan ke kiri (-x) dan atas (-y)
            spreadRadius: 1,
          ),
          // Bayangan untuk bawah dan kanan (warna hitam)
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 6,
            offset: const Offset(2, 2), // Arahkan ke kanan (+x) dan bawah (+y)
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Metode Pembayaran",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: AppFontWeight.bodyBold,
                    color: AppColors.error500),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: const Color(0xffE0E5EC),
                  border: Border.all(color: AppColors.error500),
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
                child: const Icon(
                  BootstrapIcons.chevron_right,
                  size: 19,
                  color: Color(0xffD84141),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
