import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:has_flutter/screens/home_screen.dart';
import 'package:has_flutter/screens/otp_screen.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/splash_screen.dart';

class MyAppRouter {
  static const String splash = "/splash";
  static const String login = "/login";
  static const String signup = "/signup";
  static const String otp = "/otp";
  static const String home = "/home";

  final GoRouter router = GoRouter(
    routes: [

      GoRoute(
        path: "/",
        name: splash,
        pageBuilder: (context, state) => const MaterialPage(
          child: SplashScreen(),
        ),
      ), GoRoute(
        path: "/login",
        name: login,
        pageBuilder: (context, state) => const MaterialPage(
          child: LoginScreen(),
        ),
      ),
      GoRoute(
        path:"/signup" ,
        name: signup,
        pageBuilder: (context, state) => const MaterialPage(
          child: SignupScreen(),
        ),
      ),
      GoRoute(
        path:"/otp" ,
        name: otp,
        pageBuilder: (context, state) => const MaterialPage(
          child: OtpScreen(),
        ),
      ),GoRoute(
        path:"/home" ,
        name: home,
        pageBuilder: (context, state) => const MaterialPage(
          child: HomeScreen(),
        ),
      ),
    ],
  );
}
