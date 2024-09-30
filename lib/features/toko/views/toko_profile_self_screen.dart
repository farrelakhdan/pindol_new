import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';
import 'package:pindol_new/features/profile/widget/top_bar_widget.dart';
import 'package:pindol_new/features/toko/provider/toko_provider.dart';
import 'package:pindol_new/features/toko/widget/header_section.dart';
import 'package:provider/provider.dart';

class TokoProfileSelfScreen extends StatefulWidget {
  const TokoProfileSelfScreen({super.key});

  @override
  State<TokoProfileSelfScreen> createState() => _TokoProfileSelfScreenState();
}

class _TokoProfileSelfScreenState extends State<TokoProfileSelfScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer<TokoProvider>(builder: (context, tokoProvider, _) {
          return Stack(
            children: [
              ListView(
                shrinkWrap: true,
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  InkWell(onTap: () {}, child: const HeaderSection()),
                  const SizedBox(
                    height: 15,
                  ),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            tokoProvider.setTab(0);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [
                                  tokoProvider.tab == 0
                                      ? Colors.black.withOpacity(0.2)
                                      : const Color(0xffE0E5EC),
                                  tokoProvider.tab == 0
                                      ? Colors.transparent
                                      : const Color(0xffE0E5EC)
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              boxShadow: tokoProvider.tab == 0
                                  ? []
                                  : [
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
                            child: Text(
                              "Home",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: AppFontWeight.bodyBold,
                                  color: tokoProvider.tab == 0
                                      ? const Color(0xffD50E0E)
                                      : Colors.black),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            tokoProvider.setTab(1);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [
                                  tokoProvider.tab == 1
                                      ? Colors.black.withOpacity(0.2)
                                      : const Color(0xffE0E5EC),
                                  tokoProvider.tab == 1
                                      ? Colors.transparent
                                      : const Color(0xffE0E5EC)
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              boxShadow: tokoProvider.tab == 1
                                  ? []
                                  : [
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
                            child: Text(
                              "Produk",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: AppFontWeight.bodyBold,
                                  color: tokoProvider.tab == 1
                                      ? const Color(0xffD50E0E)
                                      : Colors.black),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            tokoProvider.setTab(2);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [
                                  tokoProvider.tab == 2
                                      ? Colors.black.withOpacity(0.2)
                                      : const Color(0xffE0E5EC),
                                  tokoProvider.tab == 2
                                      ? Colors.transparent
                                      : const Color(0xffE0E5EC)
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              boxShadow: tokoProvider.tab == 2
                                  ? []
                                  : [
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
                            child: Text(
                              "Kategori",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: AppFontWeight.bodyBold,
                                  color: tokoProvider.tab == 2
                                      ? const Color(0xffD50E0E)
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  tokoProvider.listTab[tokoProvider.tab]
                ],
              ),
              const TopBarWidget(),
            ],
          );
        }),
      ),
    );
  }
}
