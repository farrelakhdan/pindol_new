import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';

class TopBarWidget extends StatefulWidget {
  const TopBarWidget({super.key});

  @override
  State<TopBarWidget> createState() => _TopBarWidgetState();
}

class _TopBarWidgetState extends State<TopBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
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
            const SizedBox(
              width: 10,
            ),
            const Expanded(
                child: Text(
              "Toko Anda",
              style:
                  TextStyle(fontSize: 15, fontWeight: AppFontWeight.bodyBold),
            )),
            InkWell(
              onTap: () {
                // Navigator.of(context).push(CupertinoPageRoute(
                //     builder: (context) => const CekTokoScreen()));
              },
              child: const Icon(
                BootstrapIcons.cart,
                size: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
