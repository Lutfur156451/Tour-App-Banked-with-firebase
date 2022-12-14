import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:selter_tore_app/const/app_color.dart';
import 'package:selter_tore_app/helper/auth_helper.dart';
import 'package:selter_tore_app/helper/route.dart';
import 'package:selter_tore_app/util/style/images/images.dart';
import 'package:selter_tore_app/view/base/custom_textfield.dart';
import 'package:selter_tore_app/view/base/custombottom.dart';
class signInScreen extends StatelessWidget {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passcontroller = TextEditingController();
  RxBool _value = false.obs;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [



                          SizedBox(height: 70.h,),
                          Text(
                            'Login\nTo Your Account',
                            style: TextStyle(
                              fontSize: 33.sp,
                              fontWeight: FontWeight.w700,
                              color: Appcolor.Violetcolor,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          SizedBox(
                            height: 25.h,
                          ),

                          CustomTextFeild(
                            'E-mail address',
                            TextInputType.emailAddress,
                            _emailcontroller,
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          CustomTextFeild(
                            'Enter password',
                            TextInputType.text,
                            _passcontroller,
                          ),
                          SizedBox(
                            height: 40.h,
                          ),

                          // ElevatedButton(onPressed: (){
                          //   final email = _emailcontroller.text;
                          //   final pass = _passcontroller.text;
                          //   var obj = Auth();
                          //   obj.registration(email, pass, context);
                          // }, child: Text('Create Acount')),
                          InkWell(
                              onTap: () {
                                _value.value = true;
                                Get.toNamed(home);
                              },
                              child: Obx(
                                    () => Center(
                                  child: Container(
                                      width: 325,
                                      height: 42,
                                      color: Appcolor.Violetcolor,
                                      child: _value == false
                                          ? coustombuttom("Login", () {
                                        final emailAddress = _emailcontroller.text;
                                        final password = _passcontroller.text;
                                        var obj = Auth();
                                        obj.login(
                                            emailAddress, password, context);
                                      })
                                          : Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Center(
                                              child: Text(
                                                'Please waite',
                                                style: TextStyle(color: Colors.white),
                                              )),
                                          Transform.scale(
                                              scale: 0.4,
                                              child: CircularProgressIndicator(
                                                color: Colors.white,
                                              )),
                                        ],
                                      )),
                                ),
                              )),
                          SizedBox(
                            height: 15.h,
                          ),
                          Align(
                            //weight center nayar jonno
                            alignment: Alignment.center,
                            child: Text(
                              '--OR--',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w200,
                                color: Appcolor.backgroundcolor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                Images.google,
                                width: 40.w,
                                height: 40.h,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                Images.fb,
                                width: 40.w,
                                height: 40.h,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Center(
                            child: RichText(
                              text: TextSpan(
                                  text: "Don't have registered yet?",
                                  style: TextStyle(color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: ' Sign Up',
                                        style: TextStyle(
                                            color: Appcolor.Violetcolor,
                                            fontWeight: FontWeight.bold),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Get.toNamed(signUp);
                                          }),
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}