import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pindol_new/core/constant/font_size.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';

class AuthHeaderWidget extends StatelessWidget {
  const AuthHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Image.asset(
          "assets/images/logo.png",
          width: 168,
          height: 123,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        const Text(
          "Welcome",
          style: TextStyle(
            fontSize: AppFontSize.heading2,
            fontWeight: AppFontWeight.bodyBold,
          ),
        ),
        const Text(
          "Please Log in First",
          style: TextStyle(
            fontSize: AppFontSize.bodyLarge,
            fontWeight: AppFontWeight.bodyBold,
          ),
        ),
      ],
    );
  }
}
