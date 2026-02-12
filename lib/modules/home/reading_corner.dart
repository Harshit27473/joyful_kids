
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/reading_item.dart';
import 'package:readmore/readmore.dart';

class ReadingCorner extends StatelessWidget {
  const ReadingCorner({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ReadingItem> readingItems = [
      ReadingItem(title: 'Strategies For Building Resilience In Children', imageUrl: 'assets/images/strategies.jpg'),
      ReadingItem(title: 'Identifying And Addressing Childhood Anxiety And Depression', imageUrl: 'assets/images/anxiety.jpg'),
      ReadingItem(title: 'Promoting Positive Body Image In Children And Adolescents', imageUrl: 'assets/images/body_image.jpg'),
      ReadingItem(title: 'Helping Children Cope With Stress And Overwhelm', imageUrl: 'assets/images/stress.jpg'),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Reading Corner',
                  style: GoogleFonts.acme(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(width: 10),
                Image.asset('assets/images/reading_corner_icon.png', height: 30),
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
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.8,
          ),
          itemCount: readingItems.length,
          itemBuilder: (context, index) {
            final item = readingItems[index];
            return _buildReadingCard(
              title: item.title,
              imageUrl: item.imageUrl,
              onTap: () {},
            );
          },
        ),
      ],
    );
  }

  Widget _buildReadingCard({
    required String title,
    required String imageUrl,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.asset(
                imageUrl,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 120,
                  color: Colors.grey[300],
                  child: const Icon(Icons.image_not_supported, size: 50),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ReadMoreText(
                title,
                trimLines: 2,
                colorClickableText: Colors.blue,
                trimMode: TrimMode.Line,
                trimCollapsedText: '... Read more',
                trimExpandedText: ' Show less',
                style: GoogleFonts.lato(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
                moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
                lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
