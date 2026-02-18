
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us', style: GoogleFonts.montserrat()),
      ),
      body: Center(
        child: Text('About Us Screen', style: GoogleFonts.montserrat()),
      ),
    );
  }
}
