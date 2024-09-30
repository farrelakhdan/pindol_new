import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';
import 'package:pindol_new/features/profile/widget/item/profile_body_item.dart';

class ProfileBodyWidget extends StatefulWidget {
  const ProfileBodyWidget({super.key});

  @override
  State<ProfileBodyWidget> createState() => _ProfileBodyWidgetState();
}

class _ProfileBodyWidgetState extends State<ProfileBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color(0xffE0E5EC),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama Pengguna",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: AppFontWeight.bodyBold,
                    ),
                  ),
                  Text(
                    "No. HP",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: AppFontWeight.bodyRegular,
                    ),
                  ),
                  Text(
                    "E-Mail",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: AppFontWeight.bodyRegular,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                margin: const EdgeInsets.all(5),
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
                child: const Icon(
                  BootstrapIcons.pencil,
                  size: 27,
                  color: Color(0xffD84141),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.width * 0.2,
              decoration: BoxDecoration(
                color: const Color(0xffE0E5EC),
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width * 0.1),
              ),
              child: const Icon(
                BootstrapIcons.alarm,
                color: Color(0xffD84141),
                size: 32,
              ),
            ),
            Expanded(
              child: Container(
                height: 3,
                color: const Color(0xffE0E5EC),
              ),
            ),
            const Icon(
              BootstrapIcons.check_circle,
              color: Color(0xffE0E5EC),
              size: 18,
            ),
            Expanded(
              child: Container(
                height: 3,
                color: const Color(0xffE0E5EC),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.width * 0.2,
              decoration: BoxDecoration(
                color: const Color(0xffE0E5EC),
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width * 0.1),
              ),
              child: const Icon(
                BootstrapIcons.alarm,
                color: Color(0xffD84141),
                size: 32,
              ),
            ),
            Expanded(
              child: Container(
                height: 3,
                color: const Color(0xffE0E5EC),
              ),
            ),
            const Icon(
              BootstrapIcons.check_circle,
              color: Color(0xffE0E5EC),
              size: 18,
            ),
            Expanded(
              child: Container(
                height: 3,
                color: const Color(0xffE0E5EC),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.width * 0.2,
              decoration: BoxDecoration(
                color: const Color(0xffE0E5EC),
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width * 0.1),
              ),
              child: const Icon(
                BootstrapIcons.alarm,
                color: Color(0xffD84141),
                size: 32,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        ProfileBodyItem(
            icon: BootstrapIcons.house,
            ontap: () {},
            title: "Alamat",
            desc: "Atur lokasi pengiriman barangmu"),
        const SizedBox(
          height: 5,
        ),
        ProfileBodyItem(
            icon: BootstrapIcons.lock,
            ontap: () {},
            title: "Keamanan Akun",
            desc: "Password, PIN, & verifikasi"),
        const SizedBox(
          height: 5,
        ),
        ProfileBodyItem(
            icon: BootstrapIcons.bell,
            ontap: () {},
            title: "Notifikasi",
            desc: "Atur notifikasimu"),
        const SizedBox(
          height: 5,
        ),
        ProfileBodyItem(
            icon: BootstrapIcons.cash_stack,
            ontap: () {},
            title: "Menunggu Pembayaran",
            desc: "Pembayaran yang belum kamu selesaikan"),
      ],
    );
  }
}
