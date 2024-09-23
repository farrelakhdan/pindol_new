import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';

class DetailWidget extends StatefulWidget {
  const DetailWidget({super.key});

  @override
  State<DetailWidget> createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  final List<String> items = [
    "Hitam  : 10",
    "Hitam  : 10",
    "Hitam  : 10",
    "Hitam  : 10",
    "Hitam  : 10",
  ];
  final List<String> items2 = [
    "S  : 4",
    "S  : 4",
    "S  : 4",
    "S  : 4",
    "S  : 4",
  ];

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
          const Text(
            "Pilih detail produk",
            style: TextStyle(fontSize: 12, fontWeight: AppFontWeight.bodyBold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Text(
                "Kategori\t:",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: AppFontWeight.bodyMedium,
                    color: Color(0xff5B5B5B)),
              ),
              Text(
                " Aksesoris",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: AppFontWeight.bodyMedium,
                    color: Color(0xff5B5B5B)),
              ),
            ],
          ),
          const Divider(
            thickness: 2,
            color: Color(0xff5B5B5B),
          ),
          const Text(
            "Style",
            style: TextStyle(
              fontSize: 12,
              fontWeight: AppFontWeight.bodyBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            spacing: 10, // Jarak horizontal antar Container
            runSpacing: 10, // Jarak vertikal antar baris
            children: items.map((text) {
              return Container(
                padding: const EdgeInsets.all(10),
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
                child: Text(
                  text,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: AppFontWeight.bodyMedium,
                      color: Color(0xff5B5B5B)),
                ),
              );
            }).toList(),
          ),
          const Divider(
            thickness: 2,
            color: Color(0xff5B5B5B),
          ),
          const Text(
            "Pilih Ukuran",
            style: TextStyle(
              fontSize: 12,
              fontWeight: AppFontWeight.bodyBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            spacing: 10, // Jarak horizontal antar Container
            runSpacing: 10, // Jarak vertikal antar baris
            children: items2.map((text) {
              return Container(
                padding: const EdgeInsets.all(10),
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
                child: Text(
                  text,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: AppFontWeight.bodyMedium,
                      color: Color(0xff5B5B5B)),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
