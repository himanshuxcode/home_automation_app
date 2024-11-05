import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToNext();
  }

  void _navigateToNext() {
    Future.delayed(const Duration(seconds: 2), () {
      if(mounted)context.go(MyAppRouter.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF9874),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 300,
            ),
            Text(
              "Home Automation",
              style: GoogleFonts.aBeeZee(
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
