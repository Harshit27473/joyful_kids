import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myapp/routes/app_routes.dart';
import 'package:myapp/utils/constants/image_paths.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacementNamed(context, AppRoutes.home),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(ImagePaths.joy),
      ),
    );
  }
}
