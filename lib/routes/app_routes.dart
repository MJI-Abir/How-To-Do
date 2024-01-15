import 'package:flutter/material.dart';
import 'package:how_to_do/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:how_to_do/presentation/home_screen/home_screen.dart';
import 'package:how_to_do/presentation/login_or_signup_screen/login_or_signup_screen.dart';
import 'package:how_to_do/presentation/login_screen/login_screen.dart';
import 'package:how_to_do/presentation/signup_screen/signup_screen.dart';
import 'package:how_to_do/presentation/splash_screen/splash_screen.dart';
import 'package:how_to_do/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginOrSignupScreen = '/login_or_signup_screen';

  static const String signupScreen = '/signup_screen';

  static const String loginScreen = '/login_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String homeScreen = '/home_screen';

  static const String personalityScreen = '/personality_screen';

  static const String workTodayScreen = '/work_today_screen';

  static const String wishListScreen = '/wish_list_screen';

  static const String settingsScreen = '/settings_screen';

  static const String languageScreen = '/language_screen';

  static const String termsandconditionsScreen = '/termsandconditions_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => const SplashScreen(),
    loginOrSignupScreen: (context) => const LoginOrSignupScreen(),
    signupScreen: (context) => SignupScreen(),
    loginScreen: (context) => LoginScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    homeScreen: (context) => const HomeScreen(),
    // personalityScreen: (context) => PersonalityScreen(),
    // workTodayScreen: (context) => WorkTodayScreen(),
    // wishListScreen: (context) => WishListScreen(),
    // settingsScreen: (context) => SettingsScreen(),
    // languageScreen: (context) => LanguageScreen(),
    // termsandconditionsScreen: (context) => TermsandconditionsScreen(),
    // appNavigationScreen: (context) => AppNavigationScreen()
  };
}
