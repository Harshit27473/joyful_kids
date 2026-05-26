import 'package:flutter/material.dart';

class ReadingCornerBanner extends StatelessWidget {
  const ReadingCornerBanner({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('ReadingCornerBanner: Building UI');
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 30, 16, 0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                'https://joyfulkids.arshiya.info/kids/rc_en.jpg',
                width: double.infinity,
                fit: BoxFit.cover,
                height: 180,
                loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  debugPrint('ReadingCornerBanner: Error loading banner image: $error');
                  return const Icon(Icons.error, size: 80, color: Colors.red);
                },
              ),
            ),
          ),
          Positioned(
            top: -25,
            right: 20,
            child: Image.network(
              'https://joyfulkids.arshiya.info/kids/images/reading-corner-banner-icon.png',
              width: 60,
              height: 60,
              errorBuilder: (context, error, stackTrace) {
                debugPrint('ReadingCornerBanner: Error loading banner icon: $error');
                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }
}
