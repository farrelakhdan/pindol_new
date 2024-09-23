import 'package:flutter/material.dart';
import 'package:pindol_new/core/state/finite_state.dart';

class ProdukProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();
  AppState state = AppState.initial;

  void clearController() {
    searchController.clear();
    notifyListeners();
  }

  Future<void> getDetail(BuildContext context) async {
    state = AppState.loading;
    notifyListeners();
    try {
      await Future.delayed(const Duration(seconds: 2));

      state = AppState.loaded;
      notifyListeners();
    } catch (e) {
      state = AppState.failed;
      notifyListeners();
    }
  }
}
