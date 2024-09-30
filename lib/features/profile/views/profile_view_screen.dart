import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';
import 'package:pindol_new/features/profile/widget/profile_header_widget.dart';
import 'package:pindol_new/features/profile/widget/profile_view_footer_widget.dart';

class ProfileViewScreen extends StatefulWidget {
  const ProfileViewScreen({super.key});

  @override
  State<ProfileViewScreen> createState() => _ProfileViewScreenState();
}

class _ProfileViewScreenState extends State<ProfileViewScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: const Color(0xffE0E5EC),
                        borderRadius: BorderRadius.circular(15),
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
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: const Color(0xffE0E5EC),
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Icon(
                          BootstrapIcons.chevron_left,
                          size: 19,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Column(
            children: [
              Text(
                "Nama Toko",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: AppFontWeight.bodyBold,
                ),
              ),
              Text(
                "Nama Pengguna",
                style: TextStyle(
                    fontSize: 12, fontWeight: AppFontWeight.bodyRegular),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Stack(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 67.5,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 117.5,
                          ),
                          const Text(
                            "Rank",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: AppFontWeight.bodyRegular),
                          ),
                          const Text(
                            "0",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: AppFontWeight.bodyBold,
                            ),
                          ),
                          const ProfileHeaderWidget(hide: true),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffE0E5EC),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(1),
                                  blurRadius: 6,
                                  offset: const Offset(-2,
                                      -2), // Arahkan ke kiri (-x) dan atas (-y)
                                  spreadRadius: 1,
                                ),
                                // Bayangan untuk bawah dan kanan (warna hitam)
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 6,
                                  offset: const Offset(2,
                                      2), // Arahkan ke kanan (+x) dan bawah (+y)
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: const Column(
                              children: [
                                Text(
                                  "Total Score",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: AppFontWeight.bodyBold,
                                  ),
                                ),
                                Text(
                                  "00",
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: AppFontWeight.bodyBold),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const ProfileViewFooterWidget()
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(67.5),
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(67.5),
                    child: Image.asset(
                      "assets/images/bannerhome.png",
                      fit: BoxFit.cover,
                      width: 135,
                      height: 135,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
