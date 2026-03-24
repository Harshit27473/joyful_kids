import 'package:flutter/material.dart';
import 'package:myapp/models/popular_item.dart';
import 'package:myapp/modules/home/reading_corner.dart';
import 'package:myapp/screens/interactive_learning_videos_screen.dart';
import 'package:myapp/screens/popular_item_detail_screen.dart';
import 'package:myapp/screens/reading_corner_screen.dart';
import 'package:myapp/screens/game_galaxy_screen.dart';
import 'package:myapp/utils/constants/app_colors.dart';
import 'package:myapp/utils/constants/image_paths.dart';

class HomeBodyWeb extends StatelessWidget {
  const HomeBodyWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final List<PopularItem> popularItems = [
      PopularItem(title: 'Soccer Championship', imageUrl: ImagePaths.soccerChampionship),
      PopularItem(title: '7 Continents of the world', imageUrl: ImagePaths.continents),
      PopularItem(title: 'Traffic command', imageUrl: ImagePaths.trafficCommand),
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Choose What To Learn Today?',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: AppColors.textColor,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: _buildCategoryCard(
                    title: 'Interactive Learning\nVideos',
                    imageUrl: ImagePaths.videoIcon,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const InteractiveLearningVideosScreen()),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 40),
                Expanded(
                  child: _buildCategoryCard(
                    title: 'Reading Corner',
                    imageUrl: ImagePaths.abc,
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
                    imageUrl: ImagePaths.gameIcon,
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
                    const Text(
                      'Popular this Week',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textColor,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Image.asset(ImagePaths.popularIcon, height: 40),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.accentColor,
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text('View All', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: popularItems
                  .map((item) => Expanded(
                        child: _buildPopularCard(
                          item: item,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PopularItemDetailScreen(item: item),
                              ),
                            );
                          },
                        ),
                      ))
                  .toList(),
            ),
            const SizedBox(height: 60),
            const ReadingCorner(),
          ],
        ),
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
          color: AppColors.accentColor,
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
              style: const TextStyle(
                fontSize: 22,
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
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: AppColors.accentColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.accentColor, width: 8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(25),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Column(
            children: [
              Image.asset(
                item.imageUrl,
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 180,
                  color: Colors.grey[300],
                  child: const Icon(Icons.image_not_supported, size: 50),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  item.title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
