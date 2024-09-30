import 'package:flutter/material.dart';
import 'package:pindol_new/core/state/finite_state.dart';
import 'package:pindol_new/features/toko/views/body/toko_body_home_screen.dart';
import 'package:pindol_new/features/toko/views/body/toko_body_kategori_screen.dart';
import 'package:pindol_new/features/toko/views/body/toko_body_produk_screen.dart';

class TokoProvider extends ChangeNotifier {
  AppState state = AppState.initial;

  int tab = 0;
  List listTab = [
    const TokoBodyHomeScreen(),
    const TokoBodyProdukScreen(),
    const TokoBodyKategoriScreen()
  ];

  void setTab(int set) {
    tab = set;
    notifyListeners();
  }

  // Future<void> getDetailLayanan(BuildContext context, String slug) async {
  //   state = AppState.loading;
  //   notifyListeners();

  //   try {
  //     final response = await LayananLainnyaService().getDetailData(slug);

  //     detail = response.data;

  //     state = AppState.loaded;
  //     notifyListeners();
  //   } catch (e) {
  //     state = AppState.failed;
  //     notifyListeners();
  //   }
  // }
}
