import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/colors.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';

class ContentHeaderWidget extends StatefulWidget {
  final String title;
  final String desc;
  final VoidCallback func;
  const ContentHeaderWidget(
      {super.key, required this.title, required this.desc, required this.func});

  @override
  State<ContentHeaderWidget> createState() => _ContentHeaderWidgetState();
}

class _ContentHeaderWidgetState extends State<ContentHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: AppFontWeight.bodyRegular,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.desc,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: AppFontWeight.bodyMedium,
                ),
              ),
              InkWell(
                onTap: widget.func,
                child: const Text(
                  "Lihat Lebih",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: AppFontWeight.bodyMedium,
                      color: AppColors.error500),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
