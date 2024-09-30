import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';

class ProfileViewFooterItem extends StatefulWidget {
  final String title;
  final String desc;
  const ProfileViewFooterItem(
      {super.key, required this.title, required this.desc});

  @override
  State<ProfileViewFooterItem> createState() => _ProfileViewFooterItemState();
}

class _ProfileViewFooterItemState extends State<ProfileViewFooterItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
          Text(
            widget.title,
            style: const TextStyle(
                fontSize: 12, fontWeight: AppFontWeight.bodyBold),
          ),
          const Divider(
            thickness: 2,
            color: Color(0xff5B5B5B),
          ),
          const Text(
            "Deskripsi",
            style: TextStyle(
              fontSize: 12,
              fontWeight: AppFontWeight.bodyBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.desc,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: AppFontWeight.bodyRegular,
            ),
          ),
        ],
      ),
    );
  }
}
