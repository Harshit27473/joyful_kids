
import 'package:flutter/material.dart';
import 'package:myapp/utils/constants/app_colors.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us', style: TextStyle()),
        backgroundColor: AppColors.primaryColor,
      ),
      body: const Center(
        child: Text('About Us Screen', style: TextStyle(color: AppColors.textColor)),
      ),
      backgroundColor: AppColors.backgroundColor,
    );
  }
}
