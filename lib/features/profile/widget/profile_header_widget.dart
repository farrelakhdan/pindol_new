import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';
import 'package:pindol_new/features/profile/widget/item/profile_header_item.dart';

class ProfileHeaderWidget extends StatefulWidget {
  final bool hide;
  const ProfileHeaderWidget({super.key, required this.hide});

  @override
  State<ProfileHeaderWidget> createState() => _ProfileHeaderWidgetState();
}

class _ProfileHeaderWidgetState extends State<ProfileHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  "00",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: AppFontWeight.bodyBold,
                  ),
                ),
                Text(
                  "Pengikut",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: AppFontWeight.bodyRegular,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  "00",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: AppFontWeight.bodyBold,
                  ),
                ),
                Text(
                  "Mengikuti",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: AppFontWeight.bodyRegular,
                  ),
                )
              ],
            ),
          ],
        ),
        widget.hide
            ? const SizedBox.shrink()
            : Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(47.5),
                        child: Image.asset(
                          "assets/images/bannerhome.png",
                          fit: BoxFit.cover,
                          width: 95,
                          height: 95,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
        const Row(
          children: [
            Expanded(
                child: ProfileHeaderItem(
              color: Color(0xff5D5FEF),
              title: 'Relationship\nBuilding',
              score: '00',
            )),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: ProfileHeaderItem(
              color: Color(0xff842AAD),
              title: 'Recriprocal\nAssistant',
              score: '00',
            )),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(
          children: [
            Expanded(
                child: ProfileHeaderItem(
              color: Color(0xff26C585),
              title: 'Recriprocal\nSustainment',
              score: '00',
            )),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: ProfileHeaderItem(
              color: Color(0xff9CAF0B),
              title: 'Active\nSupport',
              score: '00',
            )),
          ],
        ),
      ],
    );
  }
}
