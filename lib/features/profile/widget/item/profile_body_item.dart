import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';

class ProfileBodyItem extends StatelessWidget {
  final IconData icon;
  final VoidCallback ontap;
  final String title;
  final String desc;
  const ProfileBodyItem(
      {super.key,
      required this.icon,
      required this.ontap,
      required this.title,
      required this.desc});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: ontap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
              color: const Color(0xffE0E5EC),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Icon(
                icon,
                size: 20,
                color: const Color(0xff5B5B5B),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: AppFontWeight.bodyBold,
                      ),
                    ),
                    Text(
                      desc,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: AppFontWeight.bodyRegular,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
