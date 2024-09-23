import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/colors.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: const Color(0xffF17070).withOpacity(0.75),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Column(
              children: [
                Row(
                  children: [
                    Icon(BootstrapIcons.tag, size: 15, color: Colors.white),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Text(
                      "Harga Promo",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                    Text(
                      "Voucher",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: AppFontWeight.bodyMedium,
                          color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Harga sebelum promo",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: AppFontWeight.bodyMedium,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Diskon",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Expanded(
                  child: Text(
                "Nama Barang",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: AppFontWeight.bodyMedium,
                ),
              )),
              SizedBox(
                width: 10,
              ),
              Icon(
                BootstrapIcons.bookmark,
                size: 20,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Text(
                "Terjual",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
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
                child: const Row(
                  children: [
                    Text(
                      "Rating",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      BootstrapIcons.star,
                      color: AppColors.warning500,
                      size: 14,
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
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
                child: const Row(
                  children: [
                    Text(
                      "Review",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      BootstrapIcons.chat,
                      size: 14,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
