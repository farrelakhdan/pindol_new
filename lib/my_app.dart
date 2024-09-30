import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pindol_new/core/constant/colors.dart';
import 'package:pindol_new/core/keys/navigator_key.dart';
import 'package:pindol_new/features/home/provider/home_provider.dart';
import 'package:pindol_new/features/leaderboard/provider/leaderboard_provider.dart';
import 'package:pindol_new/features/navbar/provider/navbar_provider.dart';
import 'package:pindol_new/features/auth/provider/auth_provider.dart';
import 'package:pindol_new/features/auth/provider/register_provider.dart';
import 'package:pindol_new/features/navbar/views/navbar_screen.dart';
import 'package:pindol_new/features/produk/provider/produk_provider.dart';
import 'package:pindol_new/features/profile/provider/profile_provider.dart';
import 'package:pindol_new/features/toko/provider/daftar_toko_provider.dart';
import 'package:pindol_new/features/toko/provider/toko_provider.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => RegisterProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => NavbarProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProdukProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProfileProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DaftarTokoProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TokoProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => LeaderBoardProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Portal Jatim App',
        home: const NavbarScreen(),
        theme: ThemeData().copyWith(
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.primary500,
          ),
          scaffoldBackgroundColor: const Color(0xffE0E5EC),
          textTheme: GoogleFonts.interTextTheme(
            Theme.of(context).textTheme,
          ).apply(
            bodyColor: Colors.black,
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            shadowColor: Colors.transparent,
            surfaceTintColor: Colors.white,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
          ),
          bottomAppBarTheme: const BottomAppBarTheme(
            color: Colors.white,
            shadowColor: Colors.black,
            elevation: 20,
            surfaceTintColor: Colors.white,
          ),
          bottomSheetTheme: const BottomSheetThemeData(
            backgroundColor: Colors.white,
            shadowColor: Colors.transparent,
            surfaceTintColor: Colors.white,
          ),
          dialogTheme: const DialogTheme(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.transparent,
          ),
          datePickerTheme: const DatePickerThemeData(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.transparent,
          ),
        ),
        navigatorKey: navigatorKey,
      ),
    );
  }
}
