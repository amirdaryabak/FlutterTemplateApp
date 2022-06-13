import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomPolyGoneButtonWidget extends StatelessWidget {
  final bool isSelected;
  final String title;
  final SvgPicture imagePath;
  final Function() onTap;

  const CustomPolyGoneButtonWidget({
    Key? key,
    required this.isSelected,
    required this.title,
    required this.imagePath,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.25,
      width: Get.width * 0.4,
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<PolygonBorder>(
            PolygonBorder(
              sides: 6,
              borderRadius: 20.0, // Defaults to 0.0 degrees
              rotate: 60,
              side: BorderSide(
                color: isSelected ? Get.theme.primaryColor : Colors.white,
                width: 3,
              ),
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 13,
            ),
            imagePath,
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
        onPressed: () {
          onTap();
        },
      ),
    );
  }
}
class CustomPolyGoneButtonWithBorderWidget extends StatelessWidget {
  final bool isSelected;
  final String title;
  final Color enabledBorderColor;
  final Color disabledBorderColor;
  final Color color;
  final Color textColor;
  final SvgPicture imagePath;
  final Function() onTap;

  const CustomPolyGoneButtonWithBorderWidget({
    Key? key,
    required this.isSelected,
    required this.title,
    required this.imagePath,
    required this.onTap,
    required this.enabledBorderColor,
    required this.color,
    required this.disabledBorderColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.25,
      width: Get.width * 0.4,
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<PolygonBorder>(
            PolygonBorder(
              sides: 6,
              borderRadius: 20.0, // Defaults to 0.0 degrees
              rotate: 60,
              side: BorderSide(
                color: isSelected ? Get.theme.primaryColor : Colors.white,
                width: 3,
              ),
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 13,
            ),
            imagePath,
            const SizedBox(
              height: 20,
            ),
            Text(
                title,
                style:  TextStyle(
                    color: textColor,
                    fontFamily: 'iransans',
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                )
              // Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
        onPressed: () {
          onTap();
        },
      ),
    );
  }
}
