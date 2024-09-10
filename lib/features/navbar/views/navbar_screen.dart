import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:pindol_new/features/navbar/provider/navbar_provider.dart';
import 'package:provider/provider.dart';

class NavbarScreen extends StatefulWidget {
  const NavbarScreen({super.key});

  @override
  State<NavbarScreen> createState() => _NavbarScreenState();
}

class _NavbarScreenState extends State<NavbarScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NavbarProvider>(
      builder: (context, dashboardProvider, _) {
        return Scaffold(
          body: dashboardProvider.pages[dashboardProvider.selectedIndex],
          bottomNavigationBar: BottomAppBar(
            height: 70,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                    dashboardProvider.icon.length,
                    (index) {
                      final icon = dashboardProvider.icon[index];
                      return GestureDetector(
                        onTap: () async {
                          // await context.read<HomeProvider>().buildPage(context);
                          if (context.mounted) {
                            dashboardProvider.setSelectedIndex(context, index);
                          }
                        },
                        child: Column(
                          children: [
                            icon == FeatherIcons.fileText
                                ? const SizedBox(
                                    width: 48,
                                  )
                                : Icon(
                                    icon,
                                    color:
                                        index == dashboardProvider.selectedIndex
                                            ? const Color(0xffD84141)
                                            : const Color(0xff5B5B5B),
                                  ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
