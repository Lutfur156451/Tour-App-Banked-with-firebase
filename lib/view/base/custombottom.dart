import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selter_tore_app/const/app_color.dart';

class coustombuttom extends StatelessWidget {
  String title;
  final Function onAction;


  coustombuttom(this.title, this.onAction);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: ()=>onAction(),
        child: Container(
          decoration: BoxDecoration(
              color: Appcolor.Violetcolor,
              borderRadius: BorderRadius.circular(8)),

          width: 325.w,
          height: 42.h,
          child: Center(
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
