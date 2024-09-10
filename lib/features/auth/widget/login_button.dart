import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/font_size.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';

class LoginButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String title;
  const LoginButton({super.key, required this.onPressed, required this.title});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
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
          color: const Color(0xffD84141),
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
