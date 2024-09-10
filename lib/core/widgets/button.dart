import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/font_size.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';

class CustomButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String title;
  const CustomButton({super.key, required this.onPressed, required this.title});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xffE0E5EC),
          boxShadow: [
            // Shadow for the right and bottom (black)
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 3,
              offset: const Offset(1, 1), // Offset towards bottom-right
              spreadRadius: 0,
            ),
            // Shadow for the top and left (white)
            BoxShadow(
              color: Colors.white.withOpacity(0.2),
              blurRadius: 3,
              offset: const Offset(-1, -1), // Offset towards top-left
              spreadRadius: 0,
            ),
          ],
        ),
        child: Text(
          widget.title,
          style: const TextStyle(
              fontSize: AppFontSize.bodySmall,
              fontWeight: AppFontWeight.bodyRegular,
              color: Colors.white),
        ),
      ),
    );
  }
}
