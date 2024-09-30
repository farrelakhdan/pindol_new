import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';

class ProfileSubHeaderWidget extends StatefulWidget {
  const ProfileSubHeaderWidget({super.key});

  @override
  State<ProfileSubHeaderWidget> createState() => _ProfileSubHeaderWidgetState();
}

class _ProfileSubHeaderWidgetState extends State<ProfileSubHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: const Color(0xffD84141),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  "assets/images/bannerhome.png",
                  fit: BoxFit.cover,
                  width: 80,
                  height: 80,
                ),
              ),
              const Text(
                "You",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: AppFontWeight.bodyBold,
                    color: Colors.white),
              ),
            ],
          ),
          const Column(
            children: [
              Text(
                "Score",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: AppFontWeight.bodyMedium,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "00",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: AppFontWeight.bodyBold,
                    color: Colors.white),
              ),
            ],
          ),
          const Column(
            children: [
              Text(
                "Rank",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: AppFontWeight.bodyMedium,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "00",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: AppFontWeight.bodyBold,
                    color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
