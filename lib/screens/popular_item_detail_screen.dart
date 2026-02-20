import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/popular_item.dart';
import 'package:myapp/utils/constants/app_colors.dart';

class PopularItemDetailScreen extends StatelessWidget {
  final PopularItem item;

  const PopularItemDetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          item.title,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            color: AppColors.textColor,
          ),
        ),
        backgroundColor: AppColors.accentColor,
        iconTheme: const IconThemeData(color: AppColors.textColor),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  item.imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => const Icon(
                    Icons.image_not_supported,
                    size: 150,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                item.title,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
