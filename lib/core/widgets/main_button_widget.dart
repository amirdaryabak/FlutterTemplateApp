import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iranian_pooshesh_agent_day/core/constants/constants.dart';
import 'package:iranian_pooshesh_agent_day/theme.dart';

class MainCustomerButtonWidget extends StatelessWidget {
  final bool isEnabled;
  final String text;
  final Function() onTap;
  final ButtonStyle? buttonStyle;
  final TextStyle? textStyle;
  final double height;
  final double width;

  const MainCustomerButtonWidget({
    Key? key,
    required this.isEnabled,
    required this.onTap,
    this.text = 'تأیید و ادامه',
    this.buttonStyle,
    this.textStyle,
    this.height = 48,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: isEnabled
            ? ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                minimumSize: MaterialStateProperty.all(const Size(190, 48)),
                backgroundColor: MaterialStateProperty.all<Color>(LightThemeColors.primaryColor),
              )
            : ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                minimumSize: MaterialStateProperty.all(const Size(190, 48)),
                backgroundColor: MaterialStateProperty.all<Color>(kColorGreyButton),
              ),
        child: Text(
          text,
          style: isEnabled
              ? textStyle ?? const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'iransans',
                  fontWeight: FontWeight.bold,
                )
              : textStyle ?? const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'iransans',
                  fontWeight: FontWeight.bold,
                ),
        ),
      ),
    );
  }
}

class MainCustomerOutLineButtonWidget extends StatelessWidget {
  final bool isEnabled;
  final String text;
  final Function() onTap;
  final ButtonStyle? buttonStyle;
  final TextStyle? textStyle;
  final double height;
  final double width;

  const MainCustomerOutLineButtonWidget({
    Key? key,
    required this.isEnabled,
    required this.text,
    required this.onTap,
    this.buttonStyle,
    this.textStyle,
    this.height = 48,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: isEnabled
            ? ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: LightThemeColors.primaryColor),
                  ),
                ),
                minimumSize: MaterialStateProperty.all(const Size(230, 60)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              )
            : ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                minimumSize: MaterialStateProperty.all(const Size(190, 48)),
                backgroundColor: MaterialStateProperty.all<Color>(kColorGreyButton),
              ),
        child: Text(
          text,
          style: isEnabled
              ? textStyle ?? const TextStyle(
                  color: LightThemeColors.primaryColor,
                  fontSize: 16,
                  fontFamily: 'iransans',
                  fontWeight: FontWeight.bold,
                )
              : textStyle ?? const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'iransans',
                  fontWeight: FontWeight.bold,
                ),
        ),
      ),
    );
  }
}

class PolygonButtonWidget extends StatelessWidget {
  final bool isEnabled;
  final String text;
  final SvgPicture icon;
  final double width;
  final double height;
  final Color buttonColor;
  final Function() onTap;
  final ButtonStyle? buttonStyle;
  final TextStyle? textStyle;

  const PolygonButtonWidget({
    Key? key,
    required this.isEnabled,
    required this.text,
    required this.icon,
    this.width = 180,
    this.height = 180,
    required this.buttonColor,
    required this.onTap,
    this.buttonStyle,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: width,
      width: height,
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: isEnabled
            ? ButtonStyle(
                shape: MaterialStateProperty.all<PolygonBorder>(
                  const PolygonBorder(
                    sides: 6,
                    borderRadius: 20.0, // Defaults to 0.0 degrees
                    rotate: 60,
                  ),
                ),
                elevation: MaterialStateProperty.all(2),
                backgroundColor: MaterialStateProperty.all(buttonColor),
              )
            : ButtonStyle(
                shape: MaterialStateProperty.all<PolygonBorder>(
                  const PolygonBorder(
                    sides: 6,
                    borderRadius: 20.0, // Defaults to 0.0 degrees
                    rotate: 60,
                  ),
                ),
                elevation: MaterialStateProperty.all(2),
                backgroundColor: MaterialStateProperty.all(kColorGreyButton),
              ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            if (text != '')
              const SizedBox(
                height: 8,
              ),
            if (text != '')
              Text(
                text,
                textAlign: TextAlign.center,
                style: Get.theme.textTheme.bodyText2!.copyWith(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'lalezar',
                ),
              ),
          ],
        ),
      ),
    );
  }
}
