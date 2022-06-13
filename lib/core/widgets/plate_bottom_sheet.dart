import 'package:flutter/material.dart';
import 'package:iranian_pooshesh_agent_day/theme.dart';

class BottomSheetTxtLetterWidget extends StatelessWidget {
  const BottomSheetTxtLetterWidget({
    Key? key,
    required this.onTap,
    required this.plateLetter,
  }) : super(key: key);
  final String plateLetter;
  final Function onTap;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () {
          onTap();
          Navigator.pop(context);
        },
        child: SizedBox(
          child: Text(
            plateLetter,
            style: const TextStyle(
              fontSize: 14,
              fontFamily: 'iransans',
              fontWeight: FontWeight.bold,
              color: LightThemeColors.primaryColor,
            ),
            textAlign: TextAlign.center,
          ),
          height: 42,
          width: 32,
        ),
      );
}
