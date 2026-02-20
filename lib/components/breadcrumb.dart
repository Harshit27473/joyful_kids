import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Breadcrumb extends StatelessWidget {
  final String text;

  const Breadcrumb({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Text(
        text,
        style: GoogleFonts.montserrat(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
