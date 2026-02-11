import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Choose What To Learn Today?',
            style: GoogleFonts.acme(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    _buildCategoryCard(
                      title: 'Interactive Learning Videos',
                      imageUrl: 'https://joyfulkids.arshiya.info/kids/video_icon.png',
                      height: 240,
                      onTap: () {
                        // TODO: Navigate to videos
                      },
                    ),
                    const SizedBox(height: 20),
                    _buildCategoryCard(
                      title: 'Reading Corner',
                      imageUrl: 'https://joyfulkids.arshiya.info/kids/abc.png',
                      height: 200,
                      onTap: () {
                        // TODO: Navigate to reading corner
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  children: [
                    Image.network(
                      'https://joyfulkids.arshiya.info/kids/images/tree-iocn-right.png',
                      height: 140,
                    ),
                    const SizedBox(height: 20),
                    _buildCategoryCard(
                      title: 'Game Galaxy',
                      imageUrl: 'https://joyfulkids.arshiya.info/kids/game_icon.png',
                      height: 200,
                      onTap: () {
                        // TODO: Navigate to game galaxy
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCard({
    required String title,
    required String imageUrl,
    required VoidCallback onTap,
    required double height,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: const Color(0xFFFFC107),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(imageUrl, height: 80, errorBuilder: (context, error, stackTrace) => const Icon(Icons.image_not_supported, size: 80)),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.acme(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
