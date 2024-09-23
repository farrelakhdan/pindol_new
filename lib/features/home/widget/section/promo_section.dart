import 'package:flutter/material.dart';
import 'dart:math';
import 'package:pindol_new/core/constant/font_weigth.dart';

class PromoSection extends StatefulWidget {
  const PromoSection({super.key});

  @override
  State<PromoSection> createState() => _PromoSectionState();
}

class _PromoSectionState extends State<PromoSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Promo Untuk Anda",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Segera Dipilih",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              Text(
                "Lihat Semua",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 290,
          width: double.infinity,
          child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 340,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 25,
                              ),
                              Expanded(
                                child: Container(
                                  height: 270,
                                  decoration: BoxDecoration(
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
                                ),
                              ),
                            ],
                          ),
                          Transform.rotate(
                            angle: pi / 7,
                            child: Container(
                              margin: const EdgeInsets.only(top: 22, left: 15),
                              alignment: Alignment.center,
                              height: 55,
                              width: 55,
                              decoration: const BoxDecoration(
                                  color: Color(0xff7F1E1E),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                            ),
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 25,
                              ),
                              Expanded(
                                child: Container(
                                  height: 270,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xffE0E5EC),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 168,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/bannerhome.png"),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Kedai cak Pi'i",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              "Mulai dari Rp.10.000",
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight:
                                                    AppFontWeight.bodySemiBold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            alignment: Alignment.center,
                            height: 55,
                            width: MediaQuery.of(context).size.width * 0.6,
                            decoration: const BoxDecoration(
                                color: Color(0xffD50E0E),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10))),
                            child: const Text(
                              "Ayo diborong!",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: AppFontWeight.bodyBold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 10,
                );
              },
              itemCount: 5),
        )
      ],
    );
  }
}
