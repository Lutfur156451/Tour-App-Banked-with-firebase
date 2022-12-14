// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:selter_tore_app/const/app_color.dart';
// import 'package:selter_tore_app/util/style/styles.dart';
// import 'package:selter_tore_app/view/base/custombottom.dart';
// import 'package:selter_tore_app/view/base/from.dart';
// import 'package:toggle_switch/toggle_switch.dart';
//
//
// class UserForm extends StatelessWidget {
//   TextEditingController _nameController = TextEditingController();
//   TextEditingController _phoneController = TextEditingController();
//   TextEditingController _addressController = TextEditingController();
//   Rx<TextEditingController> _dobController = TextEditingController().obs;
//   String? dob;
//   String gender = "Male";
//   Rx<DateTime> selectedDate = DateTime.now().obs;
//
//   _selectDate(BuildContext context) async {
//     final selected = await showDatePicker(
//       context: context,
//       initialDate: selectedDate.value,
//       firstDate: DateTime(2000),
//       lastDate: DateTime(2025),
//     );
//
//     if (selected != null && selected != selectedDate) {
//       dob = "${selected.day} - ${selected.month} - ${selected.year}";
//       _dobController.value.text = dob!;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
//         child: Container(
//           child: SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Tell Us More About You.",
//                   style: TextStyle(
//                     fontSize: 32.sp,
//                     fontWeight: FontWeight.w500,
//                     color: Appcolor.Violetcolor,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 12.h,
//                 ),
//                 Text(
//                   "We will not share your information outside this application.",
//                   style: TextStyle(
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.w300,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 30.h,
//                 ),
//                 FormField(_nameController, TextInputType.name, 'name'),
//                 FormField(_phoneController, TextInputType.number, 'number'),
//                 FormField(_addressController, TextInputType.text, 'address'),
//                 Obx(
//                   () => TextFormField(
//                     controller: _dobController.value,
//                     readOnly: true,
//                     decoration: InputDecoration(
//                       hintText: "date of birth",
//                       hintStyle: TextStyle(
//                         fontSize: 15.sp,
//                       ),
//                       suffixIcon: IconButton(
//                         onPressed: () => _selectDate(context),
//                         icon: Icon(Icons.calendar_month_rounded),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10.h,
//                 ),
//                 ToggleSwitch(
//                   initialLabelIndex: 0,
//                   totalSwitches: 2,
//                   labels: [
//                     'Male',
//                     'Female',
//                   ],
//                   onToggle: (index) {
//                     if (index == 0) {
//                       gender = "Male";
//                     } else {
//                       gender = "Female";
//                     }
//                     print('switched to: $index');
//                   },
//                 ),
//                 SizedBox(
//                   height: 20.h,
//                 ),
//
//                 coustombuttom( 'Submit',(){
//                   UsersInfo().sendFormDataToDB(
//                       _nameController.text,
//                       int.parse(_phoneController.text),
//                       _addressController.text,
//                       dob!,
//                       gender);
//                 } )
//
//               //
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// Widget FormField(controller, inputType, hint) {
//   return TextFormField(
//     controller: controller,
//     keyboardType: inputType,
//     decoration: AppStyles().textFieldDecoration(hint),
//   );
// }
