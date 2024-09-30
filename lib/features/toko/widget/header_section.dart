import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/colors.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';

class HeaderSection extends StatefulWidget {
  const HeaderSection({super.key});

  @override
  State<HeaderSection> createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Image.asset(
                  "assets/images/bannerhome.png",
                  fit: BoxFit.cover,
                  width: 70,
                  height: 70,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Flexible(
                          child: Text(
                            "Nama Toko",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: AppFontWeight.bodyBold),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black)),
                          child: const Icon(
                            BootstrapIcons.chevron_right,
                            size: 15,
                          ),
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(
                          BootstrapIcons.star,
                          size: 15,
                          color: AppColors.warning500,
                        ),
                        Text(
                          " 0,0 ",
                          style: TextStyle(
                              fontSize: 12, fontWeight: AppFontWeight.bodyBold),
                        ),
                        Text(
                          "(0 Pengikut)",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: AppFontWeight.bodyRegular),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          "Status. ",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: AppFontWeight.bodyRegular),
                        ),
                        Text(
                          "Online",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: AppFontWeight.bodyRegular),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
