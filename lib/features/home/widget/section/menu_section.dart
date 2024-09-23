import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/font_size.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';
import 'package:pindol_new/features/home/provider/home_provider.dart';
import 'package:pindol_new/features/home/widget/item/menu_item.dart';
import 'package:provider/provider.dart';

class MenuSection extends StatelessWidget {
  const MenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kategori",
                style: TextStyle(
                  fontSize: AppFontSize.bodyMedium,
                  fontWeight: AppFontWeight.bodySemiBold,
                ),
              ),
              Text(
                "Pilih yang sesuai dengan anda",
                style: TextStyle(
                  fontSize: AppFontSize.bodySmall,
                  fontWeight: AppFontWeight.bodyRegular,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Consumer<HomeProvider>(builder: (context, homeProvider, _) {
          return Container(
            width: double.infinity,
            // decoration: BoxDecoration(
            //     border: Border.all(width: 1, color: Colors.black)),
            child: GridView.count(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              childAspectRatio: 1.2,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              shrinkWrap: true,
              children: List.generate(
                homeProvider.dataMenu.length,
                (index) {
                  return menuItem(
                    homeProvider.dataMenu[index].icon,
                    homeProvider.dataMenu[index].title,
                    () {},
                  );
                },
              ),
            ),
          );
        })
      ],
    );
  }
}
