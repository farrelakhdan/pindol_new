import 'package:flutter/material.dart';
import 'package:pindol_new/features/produk/widget/item/list_produk_horizontal_item.dart';

class ProdukLainWidget extends StatefulWidget {
  const ProdukLainWidget({super.key});

  @override
  State<ProdukLainWidget> createState() => _ProdukLainWidgetState();
}

class _ProdukLainWidgetState extends State<ProdukLainWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
