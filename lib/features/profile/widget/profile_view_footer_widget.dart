import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';
import 'package:pindol_new/features/profile/widget/item/profile_view_footer_item.dart';

class ProfileViewFooterWidget extends StatefulWidget {
  const ProfileViewFooterWidget({super.key});

  @override
  State<ProfileViewFooterWidget> createState() =>
      _ProfileViewFooterWidgetState();
}

class _ProfileViewFooterWidgetState extends State<ProfileViewFooterWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffE0E5EC),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(1),
                blurRadius: 6,
                offset:
                    const Offset(-2, -2), // Arahkan ke kiri (-x) dan atas (-y)
                spreadRadius: 1,
              ),
              // Bayangan untuk bawah dan kanan (warna hitam)
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 6,
                offset:
                    const Offset(2, 2), // Arahkan ke kanan (+x) dan bawah (+y)
                spreadRadius: 1,
              ),
            ],
          ),
          child: Row(
            children: [
              const Column(
                children: [
                  Icon(
                    BootstrapIcons.star_fill,
                    color: Color(0xffEE8F1A),
                    size: 80,
                  ),
                  Text(
                    "5.0",
                    style: TextStyle(
                        fontSize: 20, fontWeight: AppFontWeight.bodyBold),
                  ),
                ],
              ),
              Container(
                width: 2, // Setel ketebalan divider
                height: 5 * 21, // Setel tinggi yang sesuai
                color: Colors.black, // Warna divider
                margin: const EdgeInsets.symmetric(horizontal: 10),
              ),
              Expanded(
                  child: Column(
                children: [
                  ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return const Row(
                          children: [
                            Icon(
                              BootstrapIcons.star_fill,
                              color: Color(0xffEE8F1A),
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "5",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: AppFontWeight.bodyBold),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                                child: Divider(
                              color: Colors.black,
                            )),
                            SizedBox(
                              width: 40,
                            ),
                            Text(
                              "0",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: AppFontWeight.bodyRegular),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 5,
                        );
                      },
                      itemCount: 5)
                ],
              ))
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const ProfileViewFooterItem(
            title: "Deskripsi Toko", desc: "Tentang toko"),
        const SizedBox(
          height: 5,
        ),
        const ProfileViewFooterItem(
            title: "Lokasi Toko", desc: "Alamat toko / lokasi toko"),
        const SizedBox(
          height: 5,
        ),
        const ProfileViewFooterItem(
            title: "Jam Operasional", desc: "(Jam Operasional)"),
        const SizedBox(
          height: 5,
        ),
        const ProfileViewFooterItem(
            title: "Tanggal terdaftar", desc: "Tanggal"),
        const SizedBox(
          height: 5,
        ),
        const ProfileViewFooterItem(
            title: "Total Kategori", desc: "Banyak kategori"),
        const SizedBox(
          height: 5,
        ),
        const ProfileViewFooterItem(
            title: "Total Produk", desc: "Banyak produk"),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
