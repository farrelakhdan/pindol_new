import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

class TokoBodyKategoriScreen extends StatefulWidget {
  const TokoBodyKategoriScreen({super.key});

  @override
  State<TokoBodyKategoriScreen> createState() => _TokoBodyKategoriScreenState();
}

class _TokoBodyKategoriScreenState extends State<TokoBodyKategoriScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
            child: Row(
              children: [
                Image.asset(
                  "assets/images/bannerhome.png",
                  width: 45,
                  height: 45,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Expanded(
                    child: Text(
                  "Nama Kategori",
                  style: TextStyle(fontSize: 12),
                )),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "(0)",
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  BootstrapIcons.three_dots,
                  size: 30,
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 5,
          );
        },
        itemCount: 5);
  }
}
