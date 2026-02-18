import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/popular_item.dart';
import 'package:myapp/screens/new_screen.dart';
import 'package:myapp/screens/reading_corner_screen.dart';
import 'package:myapp/screens/game_galaxy_screen.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Choose What To Learn Today?',
            style: GoogleFonts.montserrat(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF224966),
            ),
          ),
          const SizedBox(height: 40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _buildCategoryCard(
                  title: 'Interactive Learning\nVideos',
                  imageUrl: 'assets/images/video_icon.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NewScreen()),
                    );
                  },
                ),
              ),
              const SizedBox(width: 40),
              Expanded(
                child: _buildCategoryCard(
                  title: 'Reading Corner',
                  imageUrl: 'assets/images/abc.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ReadingCornerScreen()),
                    );
                  },
                ),
              ),
              const SizedBox(width: 40),
              Expanded(
                child: _buildCategoryCard(
                  title: 'Game Galaxy',
                  imageUrl: 'assets/images/game_icon.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GameGalaxyScreen()),
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Popular this Week',
                    style: GoogleFonts.montserrat(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF224966),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Image.asset('assets/images/popular-icon.png', height: 40),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFEC50B),
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text('View All', style: GoogleFonts.montserrat(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          const SizedBox(height: 30),
          ...popularItems.map((item) => _buildPopularCard(item: item, onTap: () {})),
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
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          color: const Color(0xFFFEC50B),
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
            Image.asset(imageUrl, height: 120, errorBuilder: (context, error, stackTrace) => const Icon(Icons.image_not_supported, size: 120)),
            const SizedBox(height: 20),
            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                fontSize: 26,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPopularCard({
    required PopularItem item,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: const Color(0xFFFEC50B),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(25),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                item.imageUrl,
                height: 80,
                width: 120,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 80,
                  width: 120,
                  color: Colors.grey[300],
                  child: const Icon(Icons.image_not_supported, size: 40),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                item.title,
                style: GoogleFonts.montserrat(
                  fontSize: 22,
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
