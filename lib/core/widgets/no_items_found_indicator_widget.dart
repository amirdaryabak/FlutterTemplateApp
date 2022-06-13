import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iranian_pooshesh_agent_day/gen/assets.gen.dart';

class NoItemsFoundIndicatorWidget extends StatelessWidget {
  const NoItemsFoundIndicatorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Assets.darkhastMan.svg(),
          const SizedBox(
            height: 16,
          ),
          Text(
            'در حال حاضر لیست خالی است',
            textAlign: TextAlign.center,
            style: Get.theme.textTheme.bodyText2!.copyWith(color: const Color(0xffD2D1D1)),
          )
        ],
      ),
    );
  }
}