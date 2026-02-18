
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Screen'),
      ),
      body: Center(
        child: Text(
          'Choose what to learn',
          style: GoogleFonts.montserrat(
            color: const Color(0xFF224966),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
