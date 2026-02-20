
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils/constants/app_colors.dart';

class GameGalaxyScreen extends StatelessWidget {
  const GameGalaxyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Galaxy', style: GoogleFonts.montserrat()),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Center(
        child: Text('Game Galaxy Screen', style: GoogleFonts.montserrat()),
      ),
    );
  }
}
