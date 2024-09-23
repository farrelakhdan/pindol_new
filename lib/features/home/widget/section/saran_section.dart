import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart' as slider_controller;
import 'package:pindol_new/core/constant/colors.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';

class SaranSection extends StatefulWidget {
  const SaranSection({super.key});

  @override
  State<SaranSection> createState() => _SaranSectionState();
}

class _SaranSectionState extends State<SaranSection> {
  int carouselIndex = 0;
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
                    "Disarankan Untuk Anda",
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
          height: 20,
        ),
        slider_controller.CarouselSlider(
          items: List.generate(
              3,
              (index) => Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/bannerhome.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.08),
                                spreadRadius: 0,
                                blurRadius: 20,
                                offset: const Offset(4, 4),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Kedai cak Pi'i",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Mulai dari Rp.10.000",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: AppFontWeight.bodySemiBold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
          options: slider_controller.CarouselOptions(
            height: 200,
            aspectRatio: 16 / 9,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              setState(() {
                carouselIndex = index;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            3,
            (index) {
              return Container(
                width: 8,
                height: 8,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: carouselIndex == index
                      ? AppColors.primary500
                      : AppColors.neutral300,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
