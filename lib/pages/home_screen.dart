import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modernlogintute/constants/colors.dart';
import 'package:modernlogintute/controller/navbar_controller.dart';
import 'package:modernlogintute/pages/home_page.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final NavbarController navbarController =
      Get.put(NavbarController(), permanent: false);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: Obx(() => IndexedStack(
              index: navbarController.index.value,
              children: [
                const HomePage(),
                Container(
                  height: Get.height,
                  width: Get.width,
                  color: greyBg,
                  alignment: Alignment.center,
                  child: const Text(
                    'Weather Page',
                  ),
                ),
                Container(
                  height: Get.height,
                  width: Get.width,
                  color: greyBg,
                  alignment: Alignment.center,
                  child: const Text(
                    'Add Tool Page',
                  ),
                ),
                Container(
                  height: Get.height,
                  width: Get.width,
                  color: greyBg,
                  alignment: Alignment.center,
                  child: const Text(
                    'News Page',
                  ),
                ),
                Container(
                  height: Get.height,
                  width: Get.width,
                  color: greyBg,
                  alignment: Alignment.center,
                  child: const Text(
                    'Crop Prediction Page',
                  ),
                ),
              ],
            )),
        floatingActionButton: FloatingActionButton(
          elevation: 5,
          focusElevation: 10,
          hoverElevation: 10,
          highlightElevation: 30,
          onPressed: () => navbarController.changeIndex(2),
          // backgroundColor: primaryRed,
          child: const Icon(
            Icons.play_arrow_rounded,
            size: 33,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Obx(() => BottomAppBar(
              elevation: 10,
              color: appBarBg,
              shape: const CircularNotchedRectangle(),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => navbarController.changeIndex(0),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: Icon(
                          (navbarController.index.value == 0)
                              ? Icons.home_rounded
                              : Icons.home_outlined,
                          color: navbarController.changeColor(0),
                          size: 26,
                        ),
                      ),
                    ),
                    InkWell(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(13)),
                      onTap: () => navbarController.changeIndex(1),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: Icon(
                          (navbarController.index.value == 1)
                              ? Icons.search
                              : Icons.search_outlined,
                          color: navbarController.changeColor(1),
                          size: 26,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    InkWell(
                      borderRadius:
                          const BorderRadius.only(topLeft: Radius.circular(13)),
                      onTap: () => navbarController.changeIndex(3),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: Icon(
                          (navbarController.index.value == 3)
                              ? Icons.favorite
                              : Icons.favorite_outline,
                          color: navbarController.changeColor(3),
                          size: 26,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => navbarController.changeIndex(4),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: Icon(
                          (navbarController.index.value == 4)
                              ? Icons.person_rounded
                              : Icons.person_outline_rounded,
                          color: navbarController.changeColor(4),
                          size: 26,
                        ),
                      ),
                    ),
                  ]),
            )),
      ),
    );
  }
}
