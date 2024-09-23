import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';

class ListProdukHorizontalItem extends StatelessWidget {
  final String image;
  final String title;
  final String harga;
  const ListProdukHorizontalItem(
      {super.key,
      required this.image,
      required this.title,
      required this.harga});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
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
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: AppFontWeight.bodyBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                const Row(
                  children: [
                    Text(
                      "Price ",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: AppFontWeight.bodyMedium,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Price",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: AppFontWeight.bodyMedium,
                            color: Color(0xffA7A7A7)),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
