import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:selter_tore_app/auth/sign_in.dart';
import 'package:selter_tore_app/auth/sign_up.dart';
import 'package:selter_tore_app/auth/user_form.dart';
import 'package:selter_tore_app/view/screen/home.dart';
import 'package:selter_tore_app/view/screen/onboarding_screen.dart';
import 'package:selter_tore_app/view/screen/privacyPolicyScreen.dart';
import 'package:selter_tore_app/view/screen/splash_screen.dart';

const String signUp = '/sign-up-screen';
const String home = '/home-screen';
const String signIn = '/signIn-screen';
const String onborading = '/onborading-screen';
const String splash = '/splash-screen';
const String privacy = '/privacy-screen';
const String UserFormScr = '/UserFormScr';

List<GetPage> getPages = [
  GetPage(
    name: signUp,
    page: () => signUpScreen(),
  ),
  GetPage(
    name: home,
    page: () => Home(),
  ),
  GetPage(
    name: splash,
    page: () => SplashScreen(),
  ),
  GetPage(
    name: signIn,
    page: () => signInScreen(),
  ),
  GetPage(
    name: onborading,
    page: () => onboardingScreen(),
  ),

  GetPage(
    name: privacy,
    page: () => privacyScreen(),
  ),



];
