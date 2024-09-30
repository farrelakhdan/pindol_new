import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';

class LeaderboardTopItem extends StatelessWidget {
  final Color color;
  final double height;
  final String foto;
  final String nama;
  final String rank;
  final String skor;
  const LeaderboardTopItem(
      {super.key,
      required this.color,
      required this.height,
      required this.foto,
      required this.nama,
      required this.rank,
      required this.skor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            // Bayangan warna putih (atas dan kiri)
            Positioned(
              top: -2,
              left: -2,
              child: Icon(
                FontAwesomeIcons.crown,
                color: Colors.white.withOpacity(1), // Warna bayangan putih
                size: 50, // Ukuran bayangan sama dengan icon
              ),
            ),
            // Bayangan warna hitam (bawah dan kanan)
            Positioned(
              top: 2,
              left: 2,
              child: Icon(
                FontAwesomeIcons.crown,
                color: Colors.black.withOpacity(0.3), // Warna bayangan hitam
                size: 50,
              ),
            ),
            // Icon Asli
            Icon(
              FontAwesomeIcons.crown,
              color: color, // Warna ikon
              size: 50,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(27.5),
          child: Image.asset(
            foto,
            width: 55,
            height: 55,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          nama,
          style: const TextStyle(
              fontSize: 10, fontWeight: AppFontWeight.bodyRegular),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          padding: const EdgeInsets.all(15),
          width: double.infinity,
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(1),
                blurRadius: 6,
                offset:
                    const Offset(-2, -2), // Arahkan ke kiri (-x) dan atas (-y)
                spreadRadius: 1,
              ),
              // Bayangan untuk bawah dan kanan (warna hitam)
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 6,
                offset:
                    const Offset(2, 2), // Arahkan ke kanan (+x) dan bawah (+y)
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
            children: [
              Text(
                rank,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: AppFontWeight.bodyBold,
                ),
              ),
              const Expanded(
                child: Center(
                  child: Text(
                    "Score",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: AppFontWeight.bodyBold,
                    ),
                  ),
                ),
              ),
              Text(
                skor,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: AppFontWeight.bodyBold,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
