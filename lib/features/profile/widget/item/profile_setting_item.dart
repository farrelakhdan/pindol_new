import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/colors.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';

class ProfileSettingItem extends StatefulWidget {
  final String title;
  final IconData? icon;
  const ProfileSettingItem({super.key, required this.title, this.icon});

  @override
  State<ProfileSettingItem> createState() => _ProfileSettingItemState();
}

class _ProfileSettingItemState extends State<ProfileSettingItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: const Color(0xffE0E5EC),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: AppFontWeight.bodyBold,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: const Color(0xffE0E5EC),
              border: Border.all(
                  color: widget.icon != null
                      ? AppColors.error500
                      : Colors.transparent),
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
            child: Icon(
              widget.icon ?? FeatherIcons.logOut,
              size: 19,
              color: const Color(0xffD84141),
            ),
          ),
        ],
      ),
    );
  }
}
