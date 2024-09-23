import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/font_size.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';
import 'package:pindol_new/features/checkout/views/checkout_screen.dart';
import 'package:pindol_new/features/home/widget/section/list_barang_section.dart';
import 'package:pindol_new/features/produk/provider/produk_provider.dart';
import 'package:pindol_new/features/produk/widget/body_widget.dart';
import 'package:pindol_new/features/produk/widget/content_header_widget.dart';
import 'package:pindol_new/features/produk/widget/header_widget.dart';
import 'package:pindol_new/features/produk/widget/produk_lain_widget.dart';
import 'package:pindol_new/features/produk/widget/sub_body_widget.dart';
import 'package:provider/provider.dart';

class DetailProdukScreen extends StatefulWidget {
  const DetailProdukScreen({super.key});

  @override
  State<DetailProdukScreen> createState() => _DetailProdukScreenState();
}

class _DetailProdukScreenState extends State<DetailProdukScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffE0E5EC),
      body: Stack(
        children: [
          Consumer<ProdukProvider>(builder: (context, produkProvider, _) {
            return ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(0),
              children: [
                const SizedBox(
                  height: 60,
                ),
                Image.asset(
                  "assets/images/bannerhome.png",
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 30,
                ),
                const HeaderWidget(),
                const SizedBox(
                  height: 10,
                ),
                const BodyWidget(),
                ContentHeaderWidget(
                  title: 'Review Produk',
                  desc: 'Ayo review produknya!',
                  func: () {},
                ),
                const SubBodyWidget(),
                ContentHeaderWidget(
                  title: 'Lainnya di toko ini',
                  desc: 'Dipilih - dipilih!!',
                  func: () {},
                ),
                const ProdukLainWidget(),
                ContentHeaderWidget(
                  title: 'Disarankan Untuk Anda',
                  desc: 'Dipilih - dipilih!!',
                  func: () {},
                ),
                const ListBarangSection(),
                const SizedBox(
                  height: 50,
                )
              ],
            );
          }),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
              color: Color(0xffE0E5EC),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      context.read<ProdukProvider>().clearController();
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      BootstrapIcons.chevron_compact_left,
                      size: 25,
                      color: Color(0xff5B5B5B),
                    )),
                Consumer<ProdukProvider>(builder: (context, produkProvider, _) {
                  return Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
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
                      child: TextFormField(
                        controller: produkProvider.searchController,
                        onFieldSubmitted: (value) {
                          // if (value.isNotEmpty) {
                          //   Navigator.push(
                          //     context,
                          //     CupertinoPageRoute(
                          //       builder: (context) => SearchResultsScreen(
                          //         query: value,
                          //       ),
                          //     ),
                          //   );
                          // }
                        },
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            BootstrapIcons.search,
                            size: 20,
                            color: Color(0xff5B5B5B),
                          ),
                          hintText: 'Search',
                          hintStyle: const TextStyle(
                            color: Color(0xff5B5B5B),
                            fontSize: AppFontSize.bodySmall,
                          ),
                          border: Theme.of(context).inputDecorationTheme.border,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          fillColor: const Color(0xffE0E5EC),
                          filled: true,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 15.0,
                            horizontal: 10.0,
                          ), // Padding teks di dalam text field
                        ),
                      ),
                    ),
                  );
                }),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      BootstrapIcons.cart,
                      size: 25,
                    )),
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.5),
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
                        child: const Icon(
                          BootstrapIcons.chat,
                          size: 21,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(CupertinoPageRoute(
                                      builder: (context) =>
                                          const CheckoutScreen()));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xffF35757),
                                  ),
                                  child: const Text(
                                    "Checkout",
                                    style: TextStyle(
                                        fontSize: AppFontSize.bodyExtraSmall,
                                        fontWeight: AppFontWeight.bodyBold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: const Color(0xffF35757),
                                    )),
                                child: const Text(
                                  "Keranjang +",
                                  style: TextStyle(
                                    fontSize: AppFontSize.bodyExtraSmall,
                                    fontWeight: AppFontWeight.bodyBold,
                                    color: Color(0xffF35757),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )))
        ],
      ),
    ));
  }
}
