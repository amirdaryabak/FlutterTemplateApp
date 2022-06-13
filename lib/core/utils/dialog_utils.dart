import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iranian_pooshesh_agent_day/core/constants/constants.dart';
import 'package:iranian_pooshesh_agent_day/gen/assets.gen.dart';
import 'package:iranian_pooshesh_agent_day/theme.dart';

class DialogUtils {
  static final DialogUtils _dialogUtils = DialogUtils._internal();

  factory DialogUtils() {
    return _dialogUtils;
  }

  static void showMainSearchBottomSheet(BuildContext context, {required String title, required List<Widget> child, bool isScrollControlled = true}) {
    Get.bottomSheet(
      Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Container(
                margin: const EdgeInsets.only(top: 80),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25)),
                  color: Colors.red,
                ),
                child: Container(),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25)),
                        color: kColorOffWhite,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            title,
                            style: Theme.of(context).textTheme.headline1!.copyWith(color: kColorGray2),
                          ),
                          IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(Icons.close),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    ...child,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      isScrollControlled: isScrollControlled,
    );
  }

  static void showMainSelectBottomSheet(
    BuildContext context, {
    required String title,
    required Widget child,
    bool isScrollControlled = true,
  }) {
    Get.bottomSheet(
      SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: false,
          body: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25)),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25)),
                    color: kColorOffWhite,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.headline1!.copyWith(color: kColorGray2),
                      ),
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(
                          Icons.keyboard_arrow_down_outlined,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: child,
                ),
              ],
            ),
          ),
        ),
      ),
      isScrollControlled: isScrollControlled,
    );
  }

  static void getDialog({
    required message,
  }) {
    Get.dialog(
      GestureDetector(
        onTap: () {
          Get.back();
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: Get.width * 0.1, vertical: Get.height * 0.32),
          child: Scaffold(
            backgroundColor: Colors.white.withOpacity(0.0),
            bottomNavigationBar: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Assets.ban.svg(),
                      Text(
                        message,
                        style: Get.theme.textTheme.bodyText2!.copyWith(
                          fontSize: 16,
                          color: LightThemeColors.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  DialogUtils._internal();
}
