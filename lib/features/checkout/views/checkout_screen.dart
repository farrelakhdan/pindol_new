import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';
import 'package:pindol_new/features/auth/widget/login_button.dart';
import 'package:pindol_new/features/checkout/views/pembayaran_success_screen.dart';
import 'package:pindol_new/features/checkout/widget/alamat_widget.dart';
import 'package:pindol_new/features/checkout/widget/detail_widget.dart';
import 'package:pindol_new/features/checkout/widget/metode_pembayaran_widget.dart';
import 'package:pindol_new/features/checkout/widget/pembayaran_widget.dart';
import 'package:pindol_new/features/checkout/widget/pengiriman_widget.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffE0E5EC),
        body: Stack(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                const SizedBox(
                  height: 70,
                ),
                const AlamatWidget(),
                const SizedBox(
                  height: 10,
                ),
                const DetailWidget(),
                const SizedBox(
                  height: 10,
                ),
                const PengirimanWidget(),
                const SizedBox(
                  height: 10,
                ),
                const PembayaranWidget(),
                const SizedBox(
                  height: 10,
                ),
                const MetodePembayaranWidget(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: LoginButton(
                      onPressed: () {
                        Navigator.of(context).push(CupertinoPageRoute(
                            builder: (context) =>
                                const PembayaranSuccessScreen()));
                      },
                      title: "Bayar Sekarang"),
                )
              ],
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        BootstrapIcons.chevron_compact_left,
                        size: 25,
                        color: Color(0xff5B5B5B),
                      )),
                  const Expanded(
                    child: Text(
                      "Checkout",
                      style: TextStyle(
                          fontSize: 15, fontWeight: AppFontWeight.bodyBold),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        BootstrapIcons.cart,
                        size: 25,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
