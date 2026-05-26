import 'package:flutter/material.dart';
import 'package:myapp/components/app_footer.dart';
import 'package:myapp/components/joyful_app_bar.dart';
import 'package:myapp/components/joyful_bottom_nav.dart';
import 'package:myapp/components/joyful_drawer.dart';
import 'package:myapp/models/reading_item.dart';
import 'package:myapp/modules/reading_corner/reading_corner_banner.dart';
import 'package:myapp/utils/constants/app_colors.dart';
import 'package:myapp/utils/constants/image_paths.dart';

class ReadingCornerScreen extends StatelessWidget {
  const ReadingCornerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('ReadingCornerScreen: Building UI');
    final List<ReadingItem> readingItems = [
      ReadingItem(
        title: 'Strategies For Building Resilience In Children',
        imageUrl:
            'https://ik.imagekit.io/pjvozlmxns/reading-corner/reading-corner/strategies-for-building-resilience-in-children/thumb.1710767130_mbMMdZjzJ.jpg',
      ),
      ReadingItem(
        title: 'Identifying And Addressing Childhood Anxiety And Depression',
        imageUrl:
            'https://ik.imagekit.io/pjvozlmxns/reading-corner/reading-corner/identifying-and-addressing-childhood-anxiety-and-depression/thumb.1710767155_Fn-n69Wvi.jpg',
      ),
      ReadingItem(
        title: 'Promoting Positive Body Image In Children And Adolescents',
        imageUrl:
            'https://ik.imagekit.io/pjvozlmxns/reading-corner/reading-corner/promoting-positive-body-image-in-children-and-adolescents/thumb.1710767179_tZdYhCiMF.jpg',
      ),
      ReadingItem(
        title: 'Helping Children Cope With Stress And Overwhelm',
        imageUrl:
            'https://ik.imagekit.io/pjvozlmxns/reading-corner/reading-corner/helping-children-cope-with-stress-and-overwhelm/thumb.1710767253_jMCbtWDDU.jpg',
      ),
    ];

    return Scaffold(
      appBar: const JoyfulAppBar(),
      drawer: const JoyfulDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://joyfulkids.arshiya.info/kids/back.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ReadingCornerBanner(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Reading Corner',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textColor,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Image.asset(ImagePaths.readingCornerIcon, height: 30),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        debugPrint('ReadingCornerScreen: View All pressed');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.accentColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text('View All', style: TextStyle(color: Colors.black, fontSize: 16)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 24,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: readingItems.length,
                  itemBuilder: (context, index) {
                    final item = readingItems[index];
                    return _buildReadingCard(
                      title: item.title,
                      imageUrl: item.imageUrl,
                      onTap: () {
                        debugPrint('ReadingCornerScreen: Tapped item: ${item.title}');
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 40),
              const AppFooter(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const JoyfulBottomNav(),
    );
  }

  Widget _buildReadingCard({
    required String title,
    required String imageUrl,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(26),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    debugPrint('ReadingCornerScreen: Error loading image $imageUrl: $error');
                    return const Icon(Icons.image_not_supported, size: 50);
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            height: 36, // Fixed height for 2 lines of text
            alignment: Alignment.topCenter, // Align text to the top
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
