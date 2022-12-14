import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:selter_tore_app/const/app_string.dart';
import 'package:selter_tore_app/util/style/images/images.dart';

import '../../helper/route.dart';
class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  final box = GetStorage();

  Future chooseScreen() async {
    var userId = box.read('uid');
    print(userId);
    if (userId == null) {
      Get.toNamed(onborading);
    } else {
      Get.toNamed(home);
    }
  }

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () => chooseScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage(Images.logo)),
              SizedBox(
                height: 10.h,
              ),
              Text(
                AppSting.APP_NAME,
                style: TextStyle(fontWeight: FontWeight.w500),


              ),
            ],
          ),
        ),
      ),
    );
  }
}
