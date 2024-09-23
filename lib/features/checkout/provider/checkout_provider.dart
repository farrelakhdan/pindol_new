import 'package:flutter/material.dart';
import 'package:pindol_new/core/state/finite_state.dart';

class CheckoutProvider extends ChangeNotifier {
  AppState state = AppState.initial;

  Future<void> getData(BuildContext context) async {
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
