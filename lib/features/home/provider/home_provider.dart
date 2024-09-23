import 'package:flutter/material.dart';
import 'package:pindol_new/core/state/finite_state.dart';
import 'package:pindol_new/features/home/models/model/menu_model.dart';

class HomeProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();
  AppState state = AppState.initial;

  void clearController() async {
    searchController.clear();
    notifyListeners();
  }

  Future<void> getData(BuildContext context, String search) async {
    state = AppState.loading;
    notifyListeners();

    try {
      await Future.delayed(const Duration(seconds: 3));

      state = AppState.loaded;
      notifyListeners();
    } catch (e) {
      state = AppState.failed;
      notifyListeners();
    }
  }

  List<MenuModel> dataMenu = [
    MenuModel(icon: Icons.restaurant_sharp, title: "text"),
    MenuModel(icon: Icons.restaurant_sharp, title: "text"),
    MenuModel(icon: Icons.restaurant_sharp, title: "text"),
    MenuModel(icon: Icons.restaurant_sharp, title: "text"),
    MenuModel(icon: Icons.restaurant_sharp, title: "text"),
    MenuModel(icon: Icons.restaurant_sharp, title: "text"),
    MenuModel(icon: Icons.restaurant_sharp, title: "text"),
    MenuModel(icon: Icons.restaurant_sharp, title: "text"),
  ];
}
