import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/reading_item.dart';

class ReadingCorner extends StatelessWidget {
  const ReadingCorner({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ReadingItem> readingItems = [
      ReadingItem(
        title: 'Strategies For Building Resilience In Children',
        imageUrl: 'https://ik.imagekit.io/pjvozlmxns/reading-corner/reading-corner/strategies-for-building-resilience-in-children/thumb.1710767130_mbMMdZjzJ.jpg',
      ),
      ReadingItem(
        title: 'Identifying And Addressing Childhood Anxiety And Depression',
        imageUrl: 'https://ik.imagekit.io/pjvozlmxns/reading-corner/reading-corner/identifying-and-addressing-childhood-anxiety-and-depression/thumb.1710767155_Fn-n69Wvi.jpg',
      ),
      ReadingItem(
        title: 'Promoting Positive Body Image In Children And Adolescents',
        imageUrl: 'https://ik.imagekit.io/pjvozlmxns/reading-corner/reading-corner/promoting-positive-body-image-in-children-and-adolescents/thumb.1710767179_tZdYhCiMF.jpg',
      ),
      ReadingItem(
        title: 'Helping Children Cope With Stress And Overwhelm',
        imageUrl: 'https://ik.imagekit.io/pjvozlmxns/reading-corner/reading-corner/helping-children-cope-with-stress-and-overwhelm/thumb.1710767253_jMCbtWDDU.jpg',
      ),
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
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF224966),
                  ),
                ),
                const SizedBox(width: 10),
                Image.asset('assets/images/reading_corner_icon.png', height: 30),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFEC50B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text('View All', style: GoogleFonts.montserrat(color: Colors.black, fontSize: 16)),
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
            mainAxisSpacing: 24,
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
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.image_not_supported, size: 50),
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
              style: GoogleFonts.montserrat(
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
