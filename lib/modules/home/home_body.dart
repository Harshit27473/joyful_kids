import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/modules/home/reading_corner.dart';

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
                      imageUrl: 'assets/images/video_icon.png',
                      height: 240,
                      onTap: () {
                        // TODO: Navigate to videos
                      },
                    ),
                    const SizedBox(height: 20),
                    _buildCategoryCard(
                      title: 'Reading Corner',
                      imageUrl: 'assets/images/abc.png',
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
                    Image.asset(
                      'assets/images/tree-iocn-right.png',
                      height: 140,
                    ),
                    const SizedBox(height: 20),
                    _buildCategoryCard(
                      title: 'Game Galaxy',
                      imageUrl: 'assets/images/game_icon.png',
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
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Popular this Week',
                    style: GoogleFonts.acme(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Image.asset('assets/images/popular-icon.png', height: 30),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: const Text('View All'),
              ),
            ],
          ),
          const SizedBox(height: 20),
          _buildPopularCard(
            title: 'Soccer Championship',
            imageUrl: 'assets/images/soccer_championship.png',
            onTap: () {},
          ),
          const SizedBox(height: 20),
          _buildPopularCard(
            title: '7 Continents of the world',
            imageUrl: 'assets/images/7_continents.png',
            onTap: () {},
          ),
          const SizedBox(height: 20),
          _buildPopularCard(
            title: 'Traffic command',
            imageUrl: 'assets/images/traffic_command.png',
            onTap: () {},
          ),
          const SizedBox(height: 30),
          const ReadingCorner(),
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
            Image.asset(imageUrl, height: 80, errorBuilder: (context, error, stackTrace) => const Icon(Icons.image_not_supported, size: 80)),
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

  Widget _buildPopularCard({
    required String title,
    required String imageUrl,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.asset(
                imageUrl,
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 180,
                  color: Colors.grey[300],
                  child: const Icon(Icons.image_not_supported, size: 50),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                title,
                style: GoogleFonts.acme(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}