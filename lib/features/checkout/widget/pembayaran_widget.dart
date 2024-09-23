import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/colors.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';

class PembayaranWidget extends StatefulWidget {
  const PembayaranWidget({super.key});

  @override
  State<PembayaranWidget> createState() => _PembayaranWidgetState();
}

class _PembayaranWidgetState extends State<PembayaranWidget> {
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
        children: [
          const Row(
            children: [
              Text(
                "Total Pengiriman",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: AppFontWeight.bodyBold,
                    color: AppColors.error500),
              ),
            ],
          ),
          const Divider(
            thickness: 2,
            color: Color(0xff5B5B5B),
          ),
          const Row(
            children: [
              Text(
                "Lorem Ipsum",
                style: TextStyle(
                    fontSize: 12, fontWeight: AppFontWeight.bodySemiBold),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  "Rp. 00,00",
                  style: TextStyle(
                      fontSize: 12, fontWeight: AppFontWeight.bodyRegular),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
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
            child: const Text(
              "Total",
              style: TextStyle(
                fontSize: 15,
                fontWeight: AppFontWeight.bodySemiBold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Rp. 00,00",
            style: TextStyle(
              fontSize: 30,
              fontWeight: AppFontWeight.bodyBold,
            ),
          ),
        ],
      ),
    );
  }
}
