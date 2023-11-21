import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controller/language_controller.dart';

class SubmitErrorDialog extends StatelessWidget {
  SubmitErrorDialog({super.key});

  final languageController = Get.put(LanguageController());

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2.0))),
      alignment: Alignment.center,
      // insetPadding: EdgeInsets.fromLTRB(30.w, 100.h, 30.w, 200.h),
      content: SizedBox(
        width: 400.w,
        height: 40.h,
        child: Center(
          child: Text(
            languageController.submitError,
            style: TextStyle(fontSize: 25.sp, color: Color(0xFF143264)),
          ),
        ),
      ),
    );
  }
}