import 'package:flutter/material.dart';
import 'package:iranian_pooshesh_agent_day/core/constants/constants.dart';
import 'package:iranian_pooshesh_agent_day/theme.dart';

class MainTextField extends StatelessWidget {
  final String? labelText;
  final TextEditingController textController;
  final FocusNode? focusNode;
  final bool isEmpty;
  final Function(String) onChanged;
  final Function(String)? onSubmitted;
  final Function() onIconTap;
  final TextInputType keyboardType;
  final Color fillColor;
  final bool isEnabled;

  const MainTextField({
    Key? key,
    required this.labelText,
    required this.textController,
    required this.focusNode,
    required this.isEmpty,
    required this.onChanged,
    this.onSubmitted,
    required this.onIconTap,
    this.keyboardType = TextInputType.name,
    this.fillColor = Colors.white,
    this.isEnabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: isEnabled,
      controller: textController,
      focusNode: focusNode,
      onChanged: (text) {
        onChanged(text);
      },
      onSubmitted: (text) {
        if (onSubmitted != null) {
          onSubmitted!(text);
        }
      },
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        fillColor: isEnabled ? fillColor : kColorGrayDisable,
        contentPadding: const EdgeInsets.all(20),
        suffixIcon: isEmpty && focusNode?.hasFocus == true && isEnabled
            ? IconButton(
                icon: const Icon(Icons.cancel),
                color: kColorGray5,
                onPressed: onIconTap,
              )
            : null,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: LightThemeColors.primaryColor),
        ),
        enabledBorder: isEmpty
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: kColorGray),
              )
            : null,
        disabledBorder: isEmpty
            ? OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: kColorGray),
        )
            : null,
      ),
      style: Theme.of(context).textTheme.bodyText2,
    );
  }
}

class MainDropDownTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController textController;
  final bool isEmpty;
  final Function() onTap;
  final Widget? suffixIcon;
  final Color fillColor;
  final bool isEnabled;

  const MainDropDownTextField({
    Key? key,
    required this.labelText,
    required this.textController,
    required this.isEmpty,
    required this.onTap,
    this.suffixIcon = const Icon(Icons.arrow_drop_down_outlined),
    this.fillColor = Colors.white,
    this.isEnabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: TextField(
        enabled: false,
        controller: textController,
        decoration: InputDecoration(
          labelText: labelText,
          contentPadding: const EdgeInsets.all(20),
          fillColor: isEnabled ? fillColor : kColorGrayDisable,
          suffixIcon: suffixIcon,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: LightThemeColors.primaryColor),
          ),
          disabledBorder: isEmpty
              ? OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: kColorGray),
          ) : null,
        ),
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
