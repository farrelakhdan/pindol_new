import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';

class ListBarangItem extends StatefulWidget {
  const ListBarangItem({super.key});

  @override
  State<ListBarangItem> createState() => _ListBarangItemState();
}

class _ListBarangItemState extends State<ListBarangItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
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
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage("assets/images/bannerhome.png"),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kedai cak Pi'i",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Mulai dari Rp.10.000",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: AppFontWeight.bodySemiBold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
