import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReadingCornerScreen extends StatelessWidget {
  const ReadingCornerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reading Corner', style: GoogleFonts.montserrat()),
      ),
      body: Center(
        child: Text('Welcome to the Reading Corner!', style: GoogleFonts.montserrat()),
      ),
    );
  }
}