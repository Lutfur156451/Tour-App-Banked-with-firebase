import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:selter_tore_app/auth/sign_up.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:selter_tore_app/const/app_color.dart';
import 'package:selter_tore_app/const/app_string.dart';
import 'package:selter_tore_app/helper/route.dart';
import 'package:selter_tore_app/view/screen/splash_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: 'AIzaSyDSsDF76wc_DuQqLKi6ZLPBDYT4g0jonHQ',
          appId: '1:133569561972:android:3d9506510411694805d821',
          messagingSenderId: '133569561972',
          projectId: 'tour-app-37510'));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final Future<FirebaseApp> _initialization = Firebase.initializeApp(
      name: 'selter app',
      options: FirebaseOptions(
          apiKey: 'AIzaSyDSsDF76wc_DuQqLKi6ZLPBDYT4g0jonHQ',
          appId: '1:133569561972:android:3d9506510411694805d821',
          messagingSenderId: '133569561972',
          projectId: 'tour-app-37510'));

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return App();
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppSting.APP_NAME,

          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: GoogleFonts.poppinsTextTheme(
              Theme.of(context).textTheme.apply(),
            ),
            scaffoldBackgroundColor: Appcolor.Scaffoldcolor,
          ),

          initialRoute:splash,
          getPages: getPages,


          home: SplashScreen(),
        );
      },
    );
  }
}
