import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/colors.dart';
import 'package:pindol_new/core/constant/font_size.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';

class SubBodyWidget extends StatefulWidget {
  const SubBodyWidget({super.key});

  @override
  State<SubBodyWidget> createState() => _SubBodyWidgetState();
}

class _SubBodyWidgetState extends State<SubBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xffE0E5EC),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(1),
                            blurRadius: 6,
                            offset: const Offset(
                                -2, -2), // Arahkan ke kiri (-x) dan atas (-y)
                            spreadRadius: 1,
                          ),
                          // Bayangan untuk bawah dan kanan (warna hitam)
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 6,
                            offset: const Offset(
                                2, 2), // Arahkan ke kanan (+x) dan bawah (+y)
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Image.asset(
                        "assets/icons/user.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffE0E5EC),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(1),
                              blurRadius: 6,
                              offset: const Offset(
                                  -2, -2), // Arahkan ke kiri (-x) dan atas (-y)
                              spreadRadius: 1,
                            ),
                            // Bayangan untuk bawah dan kanan (warna hitam)
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 6,
                              offset: const Offset(
                                  2, 2), // Arahkan ke kanan (+x) dan bawah (+y)
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: const Text(
                          "Nama PenggunaNama PenggunaNama PenggunaNama PenggunaNama PenggunaNama Pengguna",
                          style: TextStyle(
                            fontSize: AppFontSize.bodyExtraSmall,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                BootstrapIcons.three_dots_vertical,
                size: 32,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 100,
            child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
                itemCount: 5),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Ulasan Pengguna",
            style: TextStyle(
              fontSize: AppFontSize.bodyExtraSmall,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Selengkapnya",
            style: TextStyle(
                fontSize: AppFontSize.bodyExtraSmall,
                fontWeight: AppFontWeight.bodyBold,
                color: AppColors.error500),
          ),
        ],
      ),
    );
  }
}
