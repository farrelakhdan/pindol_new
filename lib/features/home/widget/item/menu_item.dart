import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/colors.dart';
import 'package:pindol_new/core/constant/font_size.dart';

Widget menuItem(
  final IconData icon,
  final String text,
  final Function() ontap,
) {
  return GestureDetector(
    onTap: ontap,
    child: SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: AppColors.borderSoft,
              borderRadius: BorderRadius.circular(24),
            ),
            child: ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Color(0xFFB9DDFF), // Warna filter
                BlendMode.modulate,
              ),
              child: Icon(
                icon,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            text,
            style: const TextStyle(
              fontSize: AppFontSize.bodyExtraSmall,
            ),
            textAlign: TextAlign.center,
          ), // Teks
        ],
      ),
    ),
  );
}
