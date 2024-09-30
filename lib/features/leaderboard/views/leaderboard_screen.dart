import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';
import 'package:pindol_new/features/leaderboard/widget/item/leaderboard_top_item.dart';
import 'package:pindol_new/features/profile/widget/profile_subheader_widget.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
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
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Leaderboard",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: AppFontWeight.bodyBold,
                  ),
                ),
                const Text(
                  "Ayo tingkatkan skor mu dan menjadi yang teratas dan dapatkan bonusnya!",
                  style: TextStyle(
                      fontSize: 12, fontWeight: AppFontWeight.bodyRegular),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                        child: LeaderboardTopItem(
                            color: Color(0xff97632C),
                            height: 150,
                            foto: "assets/images/bannerhome.png",
                            nama: "Nama Pengguna",
                            rank: "#3",
                            skor: "00")),
                    SizedBox(
                      width: 35,
                    ),
                    Expanded(
                      child: LeaderboardTopItem(
                          color: Color(0xffE2E2E2),
                          height: 170,
                          foto: "assets/images/bannerhome.png",
                          nama: "Nama Pengguna",
                          rank: "#2",
                          skor: "00"),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Expanded(
                      child: LeaderboardTopItem(
                          color: Color(0xffEE8F1A),
                          height: 190,
                          foto: "assets/images/bannerhome.png",
                          nama: "Nama Pengguna",
                          rank: "#1",
                          skor: "00"),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const ProfileSubHeaderWidget(),
                const SizedBox(
                  height: 20,
                ),
                ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(10),
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
                        child: Row(
                          children: [
                            const Text(
                              "#00",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: AppFontWeight.bodyBold,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.asset(
                                "assets/images/bannerhome.png",
                                fit: BoxFit.cover,
                                width: 50,
                                height: 50,
                              ),
                            ),
                            const Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Nama Toko",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: AppFontWeight.bodyBold,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Score",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: AppFontWeight.bodyRegular,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Nama Pengguna",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight:
                                                AppFontWeight.bodyRegular,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "00",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight:
                                                AppFontWeight.bodyRegular,
                                            color: Color(0xffD84141)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: 5)
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
