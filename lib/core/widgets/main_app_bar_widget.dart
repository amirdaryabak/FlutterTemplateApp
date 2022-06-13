import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iranian_pooshesh_agent_day/core/constants/constants.dart';
import 'package:iranian_pooshesh_agent_day/gen/assets.gen.dart';
import 'package:iranian_pooshesh_agent_day/theme.dart';

class MainAppBarWithDrawerWidget extends StatelessWidget {
  final String titleText;
  final Function() onTap;

  const MainAppBarWithDrawerWidget({Key? key, required this.titleText, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      decoration: const BoxDecoration(
        color: LightThemeColors.primaryColor,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RawMaterialButton(
            onPressed: onTap,
            child: const Icon(
              Icons.menu,
              color: textLightBlackColor,
            ),
          ),
          Text(
            titleText,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: textLightBlackColor,
              fontFamily: 'iransans',
            ),
          ),
          RawMaterialButton(
            onPressed: () {
              Get.back();
            },
            child: const Icon(
              Icons.close,
              color: textLightBlackColor,
            ),
          ),
        ],
      ),
    );
  }
}

class MainAppBarWithCloseWidget extends StatelessWidget {
  final String titleText;

  const MainAppBarWithCloseWidget({Key? key, required this.titleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      decoration: const BoxDecoration(
        color: LightThemeColors.primaryColor,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RawMaterialButton(
            onPressed: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: textLightBlackColor,
            ),
          ),
          Text(
            titleText,
            style: Theme.of(context).textTheme.headline1!.copyWith(color: kColorGray2),
          ),
          RawMaterialButton(
            onPressed: () {

            },
            child: const Icon(
              Icons.close,
              color: textLightBlackColor,
            ),
          ),
        ],
      ),
    );
  }
}

class MainCustomerAppBarWithDrawerWidget extends StatelessWidget {
  final Function() onTap;

  const MainCustomerAppBarWithDrawerWidget({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      decoration: const BoxDecoration(
        color: LightThemeColors.primaryColor,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RawMaterialButton(
            onPressed: onTap,
            child: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.008),
            child: Container(child: Assets.homelogo.svg()),
          ),
          RawMaterialButton(
            onPressed: () {
              Get.back();
            },
            child: Container(),
          ),
        ],
      ),
    );
  }
}

class MainCustomerAppBarWithTitleAndDrawerWidget extends StatelessWidget {
  final String screenTitle;
  final Function() onTap;

  const MainCustomerAppBarWithTitleAndDrawerWidget({
    Key? key,
    required this.screenTitle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Container(
        height: 84,
        decoration: const BoxDecoration(
          color: LightThemeColors.primaryColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RawMaterialButton(
              onPressed: onTap,
              child: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
            Text(
              screenTitle,
              style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'iransans'),
            ),
            RawMaterialButton(
              onPressed: () {
                Get.back();
              },
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainCustomerAppBarWithTitleWidget extends StatelessWidget {
  final String screenTitle;
  final bool isBackVisible;
  final bool isCancelVisible;

  const MainCustomerAppBarWithTitleWidget({
    Key? key,
    required this.screenTitle,
    this.isBackVisible = true,
    this.isCancelVisible = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Container(
        height: 84,
        decoration: const BoxDecoration(
          color: LightThemeColors.primaryColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RawMaterialButton(
              onPressed: () {
                if (isBackVisible) {
                  Get.back();
                }
              },
              child: isBackVisible ? const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ) : Container(),
            ),
            Text(
              screenTitle,
              style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'iransans'),
            ),
            RawMaterialButton(
              onPressed: () {

              },
              child: isCancelVisible
                  ? const Icon(
                      Icons.close,
                      color: Colors.white,
                    )
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }
}
