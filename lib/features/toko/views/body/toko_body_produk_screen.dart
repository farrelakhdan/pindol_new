import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pindol_new/features/home/widget/item/list_barang_item.dart';
import 'package:pindol_new/features/produk/views/detail_produk_screen.dart';

class TokoBodyProdukScreen extends StatefulWidget {
  const TokoBodyProdukScreen({super.key});

  @override
  State<TokoBodyProdukScreen> createState() => _TokoBodyProdukScreenState();
}

class _TokoBodyProdukScreenState extends State<TokoBodyProdukScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(20),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Jumlah item per baris
        crossAxisSpacing: 10.0, // Jarak horizontal antar item
        mainAxisSpacing: 10.0, // Jarak vertikal antar item
        childAspectRatio: 1 / 1.5, // Rasio lebar terhadap tinggi, 250px tinggi
      ),
      itemCount: 10, // Ganti sesuai jumlah item
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
            onTap: () {
              Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => const DetailProdukScreen()));
            },
            child: const ListBarangItem());
      },
    );
  }
}
