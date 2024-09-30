import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:pindol_new/core/state/finite_state.dart';
import 'package:pindol_new/features/home/views/home_screen.dart';
import 'package:pindol_new/features/profile/views/profile_screen.dart';

class NavbarProvider extends ChangeNotifier {
  // Dashboard  ini gunanya untuk menampung bottom navbar
  // Jadi ga ada screen yang berarti
  // Dashboard ini akan menampung pages yang di klik dari botton navbar

  // Ini index stiap halaman
  int selectedIndex = 0;

  // State untuk loading
  AppState state = AppState.initial;

  // Icon
  final List icon = [
    FeatherIcons.home,
    BootstrapIcons.clock_history,
    FeatherIcons.user,
  ];

  // Title buat Icon Diatas
  final List<String> title = [
    'Beranda',
    'Riwayat',
    'Profil',
  ];

  // Pages untuk icon icon diatas
  final List<Widget> pages = [
    const HomeScreen(),
    const HomeScreen(),
    const ProfileScreen(),
  ];

  // Set Pages yang dipilih
  void setSelectedIndex(BuildContext context, int index) async {
    selectedIndex = index;

    notifyListeners();
  }
}
