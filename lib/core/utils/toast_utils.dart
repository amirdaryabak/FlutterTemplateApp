import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iranian_pooshesh_agent_day/core/constants/constants.dart';
import 'package:iranian_pooshesh_agent_day/core/utils/utils.dart';

enum ToastyType {
  success,
  information,
  warning,
  error,
}

class ToastUtils {
  static final ToastUtils _toastUtils = ToastUtils._internal();

  factory ToastUtils() {
    return _toastUtils;
  }

  static void showSnackBar({
    toastType = ToastyType.success,
    msgSuccess = 'اطلاعات شما با موفقیت ثبت شد',
    msgInfo = 'پرونده به در حال اجرا انتقال یافت',
    msgError = 'خطا در برقرای ارتباط',
    msgWarning = 'مشکلی پیش آمده است',
  }) {
    SnackbarController.cancelAllSnackbars();
    switch (toastType) {
      case ToastyType.success:
        Get.rawSnackbar(
            snackPosition: SnackPosition.TOP,
            margin: const EdgeInsets.all(5),
            borderWidth: 2,
            borderColor: kBGToastDarkGreen,
            borderRadius: 15,
            messageText: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Container(
                        decoration: BoxDecoration(color: kBGToastDarkGreen, borderRadius: BorderRadius.circular(12)),
                        padding: const EdgeInsets.all(6),
                        child: Container(
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.check,
                              color: kBGToastDarkGreen,
                            ))),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                        child: Text(
                      msgSuccess,
                      style: Get.theme.textTheme.bodyText2,
                      textDirection: TextDirection.rtl,
                      maxLines: 1,
                    )),
                  ],
                )),
            backgroundColor: kBGToastLightGreen.withOpacity(0.9),
            barBlur: 1.0);
        break;
      case ToastyType.information:
        Get.rawSnackbar(
            snackPosition: SnackPosition.TOP,
            margin: const EdgeInsets.all(5),
            borderWidth: 2,
            borderColor: Colors.blueAccent,
            borderRadius: 15,
            messageText: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Flexible(
                        flex: 2,
                        child: Container(
                            decoration: BoxDecoration(color: kBGToastDarkBlue, borderRadius: BorderRadius.circular(12)),
                            padding: const EdgeInsets.all(6),
                            child: Container(
                                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                child: const Icon(
                                  Icons.priority_high_outlined,
                                  color: kBGToastDarkBlue,
                                )))),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    Flexible(
                        flex: 4,
                        child: Text(
                          msgInfo,
                          style: Get.theme.textTheme.bodyText2,
                          textDirection: TextDirection.rtl,
                        )),
                  ],
                )),
            backgroundColor: kBGToastLightBlue.withOpacity(0.8),
            barBlur: 1.0);
        break;
      case ToastyType.warning:
        Get.rawSnackbar(
            snackPosition: SnackPosition.TOP,
            margin: const EdgeInsets.all(5),
            borderWidth: 2,
            borderColor: kBGToastDarkYellow,
            borderRadius: 15,
            messageText: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Flexible(
                        flex: 2,
                        child: Container(
                            decoration: BoxDecoration(color: kBGToastDarkYellow, borderRadius: BorderRadius.circular(12)),
                            padding: const EdgeInsets.all(6),
                            child: Container(
                                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                child: const Icon(
                                  Icons.priority_high_outlined,
                                  color: kBGToastDarkYellow,
                                )))),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    Flexible(
                        flex: 7,
                        child: Text(
                          msgWarning,
                          style: Get.theme.textTheme.bodyText2,
                          textDirection: TextDirection.rtl,
                        )),
                  ],
                )),
            backgroundColor: kBGToastLightYellow.withOpacity(0.8),
            barBlur: 1.0);
        break;
      case ToastyType.error:
        Get.rawSnackbar(
            snackPosition: SnackPosition.TOP,
            margin: const EdgeInsets.all(5),
            borderWidth: 2,
            duration: Duration(seconds: Utils.isPrePublishTest ? 8 : 3),
            borderColor: kColorRed,
            borderRadius: 15,
            messageText: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Flexible(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(color: kColorRed, borderRadius: BorderRadius.circular(12)),
                        padding: const EdgeInsets.all(6),
                        child: Container(
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.priority_high_outlined,
                            color: kBGToastDarkYellow,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    Flexible(
                        flex: 7,
                        child: Text(
                          msgError,
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'iransans',
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            fontSize: 12,
                          ),
                          textDirection: TextDirection.rtl,
                        ),),
                  ],
                )),
            backgroundColor: kColorRedSnackBar.withOpacity(0.9),
            barBlur: 1.0);
        break;
    }
  }

  ToastUtils._internal();
}
