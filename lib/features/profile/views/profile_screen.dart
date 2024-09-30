import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';
import 'package:pindol_new/features/home/widget/item/list_barang_item.dart';
import 'package:pindol_new/features/leaderboard/views/leaderboard_screen.dart';
import 'package:pindol_new/features/produk/views/detail_produk_screen.dart';
import 'package:pindol_new/features/profile/widget/item/profile_setting_item.dart';
import 'package:pindol_new/features/profile/widget/profile_body_widget.dart';
import 'package:pindol_new/features/profile/widget/profile_header_widget.dart';
import 'package:pindol_new/features/profile/widget/profile_subheader_widget.dart';
import 'package:pindol_new/features/profile/widget/top_bar_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              shrinkWrap: true,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const ProfileHeaderWidget(
                  hide: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: () => Navigator.of(context).push(CupertinoPageRoute(
                        builder: (context) => const LeaderboardScreen())),
                    child: const ProfileSubHeaderWidget()),
                const SizedBox(
                  height: 20,
                ),
                const ProfileBodyWidget(),
                const SizedBox(
                  height: 20,
                ),
                const ProfileSettingItem(
                  title: "Pengaturan Aplikasi",
                  icon: BootstrapIcons.chevron_down,
                ),
                const SizedBox(
                  height: 10,
                ),
                const ProfileSettingItem(
                  title: "Seputar Aplikasi",
                  icon: BootstrapIcons.chevron_down,
                ),
                const SizedBox(
                  height: 10,
                ),
                const ProfileSettingItem(
                  title: "Keluar Akun",
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Lihat Lebih",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: AppFontWeight.bodyBold,
                            color: Color(0xffD84141)),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Jumlah item per baris
                    crossAxisSpacing: 10.0, // Jarak horizontal antar item
                    mainAxisSpacing: 10.0, // Jarak vertikal antar item
                    childAspectRatio:
                        1 / 1.5, // Rasio lebar terhadap tinggi, 250px tinggi
                  ),
                  itemCount: 10, // Ganti sesuai jumlah item
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                        onTap: () {
                          Navigator.of(context).push(CupertinoPageRoute(
                              builder: (context) =>
                                  const DetailProdukScreen()));
                        },
                        child: const ListBarangItem());
                  },
                )
              ],
            ),
            const TopBarWidget(),
          ],
        ),
      ),
    );
  }
}
