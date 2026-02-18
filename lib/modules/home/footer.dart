import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFF9E7EA),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/images/footer_background.jpeg',
                fit: BoxFit.fitWidth,
                width: double.infinity,
              ),
              const SizedBox(height: 80), // Space for the text
            ],
          ),
          Positioned(
            right: 15,
            bottom: 0,
            child: Image.network(
              'https://joyfulkids.arshiya.info/kids/images/rocket-icon.png',
              height: 200,
            ),
          ),
          Positioned(
            bottom: 10,
            child: Column(
              children: [
                Text(
                  'Copyright@2025. Joyfulkids',
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    color: const Color(0xFF5D4037),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildFooterLink('About Us', () {}),
                    _buildFooterDivider(),
                    _buildFooterLink('T&C', () {}),
                    _buildFooterDivider(),
                    _buildFooterLink('Privacy Policy', () {}),
                    _buildFooterDivider(),
                    _buildFooterLink('FAQ', () {}),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooterLink(String text, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: GoogleFonts.lato(
          fontSize: 14,
          color: const Color(0xFF5D4037),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildFooterDivider() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        '|',
        style: TextStyle(fontSize: 14, color: Color(0xFF5D4037)),
      ),
    );
  }
}
