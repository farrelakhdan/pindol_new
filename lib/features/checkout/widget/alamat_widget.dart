import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/colors.dart';
import 'package:pindol_new/core/constant/font_size.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';

class AlamatWidget extends StatefulWidget {
  const AlamatWidget({super.key});

  @override
  State<AlamatWidget> createState() => _AlamatWidgetState();
}

class _AlamatWidgetState extends State<AlamatWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xffE0E5EC),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(1),
            blurRadius: 6,
            offset: const Offset(-2, -2), // Arahkan ke kiri (-x) dan atas (-y)
            spreadRadius: 1,
          ),
          // Bayangan untuk bawah dan kanan (warna hitam)
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 6,
            offset: const Offset(2, 2), // Arahkan ke kanan (+x) dan bawah (+y)
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(
                BootstrapIcons.geo_alt,
                size: 19,
                color: Color(0xffD84141),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Alamat Anda",
                style:
                    TextStyle(fontSize: 12, fontWeight: AppFontWeight.bodyBold),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Text(
                "Provinsi\t:",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: AppFontWeight.bodyMedium,
                    color: Color(0xff5B5B5B)),
              ),
              Text(
                " Provinsi",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: AppFontWeight.bodyMedium,
                    color: Color(0xff5B5B5B)),
              ),
            ],
          ),
          const Divider(
            thickness: 2,
            color: Color(0xff5B5B5B),
          ),
          const Text(
            "Detail Produk",
            style: TextStyle(
              fontSize: 12,
              fontWeight: AppFontWeight.bodyBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Perum Ikip Tegalgondo, Blok 2J, No.20",
            style: TextStyle(
              fontSize: AppFontSize.bodyExtraSmall,
              fontWeight: AppFontWeight.bodyRegular,
              color: AppColors.textColorSecondary,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {},
            child: const Text(
              "Ganti Alamat",
              style: TextStyle(
                  fontSize: AppFontSize.bodyExtraSmall,
                  fontWeight: AppFontWeight.bodyBold,
                  color: Color(0xffD84141)),
            ),
          ),
        ],
      ),
    );
  }
}
