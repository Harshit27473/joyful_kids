import 'package:flutter/material.dart';
import 'package:myapp/models/popular_item.dart';
import 'package:myapp/modules/home/reading_corner.dart';
import 'package:myapp/screens/interactive_learning_videos_screen.dart';
import 'package:myapp/screens/popular_item_detail_screen.dart';
import 'package:myapp/screens/reading_corner_screen.dart';
import 'package:myapp/screens/game_galaxy_screen.dart';
import 'package:myapp/utils/constants/app_colors.dart';
import 'package:myapp/utils/constants/image_paths.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final List<PopularItem> popularItems = [
      PopularItem(title: 'Soccer Championship', imageUrl: ImagePaths.soccerChampionship),
      PopularItem(title: '7 Continents of the world', imageUrl: ImagePaths.continents),
      PopularItem(title: 'Traffic command', imageUrl: ImagePaths.trafficCommand),
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.02),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Choose What To Learn Today?',
                style: TextStyle(
                  fontSize: screenWidth * 0.055,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 600) {
                  // Wide screen layout
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: _buildCategoryCard(
                          context,
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
                      SizedBox(width: screenWidth * 0.03),
                      Expanded(
                        child: _buildCategoryCard(
                          context,
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
                      SizedBox(width: screenWidth * 0.03),
                      Expanded(
                        child: _buildCategoryCard(
                          context,
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
                  );
                } else {
                  // Narrow screen layout
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            _buildCategoryCard(
                              context,
                              title: 'Interactive Learning\nVideos',
                              imageUrl: ImagePaths.videoIcon,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const InteractiveLearningVideosScreen()),
                                );
                              },
                            ),
                            SizedBox(height: screenHeight * 0.04),
                            _buildCategoryCard(
                              context,
                              title: 'Reading Corner',
                              imageUrl: ImagePaths.abc,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const ReadingCornerScreen()),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.04),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(
                              ImagePaths.treeIocnRight,
                              height: screenHeight * 0.18,
                            ),
                            SizedBox(height: screenHeight * 0.025),
                            _buildCategoryCard(
                              context,
                              title: 'Game Galaxy',
                              imageUrl: ImagePaths.gameIcon,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const GameGalaxyScreen()),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
            SizedBox(height: screenHeight * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Popular this Week',
                      style: TextStyle(
                        fontSize: screenWidth * 0.05,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textColor,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Image.asset(ImagePaths.popularIcon, height: 30),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.accentColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text('View All', style: TextStyle(color: Colors.black, fontSize: screenWidth * 0.04)),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: popularItems.length,
              itemBuilder: (context, index) {
                final item = popularItems[index];
                return _buildPopularCard(
                  context: context,
                  item: item,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PopularItemDetailScreen(item: item),
                      ),
                    );
                  },
                );
              },
            ),
            SizedBox(height: screenHeight * 0.04),
            const ReadingCorner(),
            SizedBox(height: screenHeight * 0.05),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(
    BuildContext context, {
    required String title,
    required String imageUrl,
    required VoidCallback onTap,
  }) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: screenHeight * 0.28,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: AppColors.accentColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
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
            Image.asset(imageUrl, height: screenHeight * 0.1, errorBuilder: (context, error, stackTrace) => Icon(Icons.image_not_supported, size: screenHeight * 0.1)),
            SizedBox(height: screenHeight * 0.015),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: screenWidth * 0.04,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPopularCard({    required BuildContext context,
    required PopularItem item,
    required VoidCallback onTap,
  }) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: screenHeight * 0.025),
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
                height: screenHeight * 0.22,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: screenHeight * 0.22,
                  color: Colors.grey[300],
                  child: const Icon(Icons.image_not_supported, size: 50),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  item.title,
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
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
