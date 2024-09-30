import 'package:flutter/material.dart';
import 'package:pindol_new/features/produk/widget/item/list_produk_horizontal_item.dart';
import 'package:pindol_new/features/toko/widget/saran_section.dart';

class TokoBodyHomeScreen extends StatefulWidget {
  const TokoBodyHomeScreen({super.key});

  @override
  State<TokoBodyHomeScreen> createState() => _TokoBodyHomeScreenState();
}

class _TokoBodyHomeScreenState extends State<TokoBodyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: [
        const SaranSection(),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.width - 40,
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
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/images/bannerhome.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 225,
          child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const ListProdukHorizontalItem(
                    image: "assets/images/bannerhome.png",
                    title: "Product",
                    harga: "Price");
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
        Container(
          width: double.infinity,
          height: (MediaQuery.of(context).size.width - 40) * 0.5,
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
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/images/bannerhome.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 225,
          child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const ListProdukHorizontalItem(
                    image: "assets/images/bannerhome.png",
                    title: "Product",
                    harga: "Price");
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
        Container(
          width: double.infinity,
          height: (MediaQuery.of(context).size.width - 40) * 0.5,
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
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/images/bannerhome.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
