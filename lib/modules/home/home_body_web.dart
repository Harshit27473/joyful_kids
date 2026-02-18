import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/popular_item.dart';
import 'package:myapp/modules/home/reading_corner.dart';
import 'package:myapp/screens/new_screen.dart';

class HomeBodyWeb extends StatelessWidget {
  const HomeBodyWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final List<PopularItem> popularItems = [
      PopularItem(title: 'Soccer Championship', imageUrl: 'assets/images/soccer_championship.png'),
      PopularItem(title: '7 Continents of the world', imageUrl: 'assets/images/7_continents.png'),
      PopularItem(title: 'Traffic command', imageUrl: 'assets/images/traffic_command.png'),
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Choose What To Learn Today?',
            style: GoogleFonts.montserrat(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF224966),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildCategoryCard(
                title: 'Interactive Learning Videos',
                imageUrl: 'assets/images/video_icon.png',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NewScreen()),
                  );
                },
              ),
              _buildCategoryCard(
                title: 'Reading Corner',
                imageUrl: 'assets/images/abc.png',
                onTap: () {},
              ),
              _buildCategoryCard(
                title: 'Game Galaxy',
                imageUrl: 'assets/images/game_icon.png',
                onTap: () {},
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
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFC107),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text('View All', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: popularItems.map((item) => Expanded(child: _buildPopularCard(title: item.title, imageUrl: item.imageUrl, onTap: () {}))).toList(),
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
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: const Color(0xFFFFC107),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(25),
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
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: const Color(0xFFFFC107),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(25),
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
