import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/colors.dart';
import 'package:pindol_new/core/constant/font_size.dart';
import 'package:pindol_new/features/home/provider/home_provider.dart';
import 'package:pindol_new/features/home/widget/section/menu_section.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> onInitCalled() async {
    await context.read<HomeProvider>().getData(context, "");
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      onInitCalled();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: onInitCalled,
        child: Consumer<HomeProvider>(builder: (context, homeProvider, _) {
          return SingleChildScrollView(
            child: Stack(
              children: [
                SizedBox(
                  height: 204,
                  child: Image.asset(
                    'assets/images/bannerhome.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 160,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: TextFormField(
                        controller: homeProvider.searchController,
                        onFieldSubmitted: (value) {
                          homeProvider.getData(
                              context, homeProvider.searchController.text);
                        },
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            BootstrapIcons.search,
                            size: 15,
                            color: AppColors.dark300,
                          ),
                          hintText: 'Search...',
                          hintStyle: const TextStyle(
                            color: AppColors.dark200,
                            fontSize: AppFontSize.bodySmall,
                          ),
                          border: Theme.of(context).inputDecorationTheme.border,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: AppColors.neutral300,
                            ),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: AppColors.neutral300,
                            ),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: AppColors.primary500,
                            ),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          fillColor: AppColors.white,
                          filled: true,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 15.0,
                            horizontal: 10.0,
                          ), // Padding teks di dalam text field
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          MenuSection(),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
