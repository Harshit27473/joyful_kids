import 'package:flutter/material.dart';
import 'package:myapp/utils/constants/app_colors.dart';
import 'package:myapp/utils/constants/image_paths.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.transparent,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Image.asset(
                ImagePaths.footerBackground,
                fit: BoxFit.fitWidth,
                width: double.infinity,
              ),
              const SizedBox(height: 120), // Space for the text
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
                const Text(
                  'Copyright@2025. Joyfulkids',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
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
        style: const TextStyle(
          fontSize: 14,
          color: AppColors.textColor,
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
        style: TextStyle(fontSize: 14, color: AppColors.textColor),
      ),
    );
  }
}
