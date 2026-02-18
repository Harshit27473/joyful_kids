import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.grey.shade300,
      child: Center(
        child: Text(
          'Footer',
          style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
