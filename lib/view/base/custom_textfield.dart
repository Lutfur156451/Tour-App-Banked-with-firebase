import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selter_tore_app/const/app_color.dart';

class CustomTextFeild extends StatelessWidget {
  String hint;
  final inputtype;
  final controlller;

  CustomTextFeild(this.hint, this.inputtype, this.controlller);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          keyboardType: inputtype,
          controller: controlller,
          decoration: InputDecoration(
            filled: false,
            hintText: hint,

            hintStyle: TextStyle(
              fontSize: 15.sp,
            ),
            // hintStyle: textStyle.textfilddecoration,
            focusColor: Appcolor.Violetcolor,
          ),
        )
      ],
    );
  }
}
