import 'package:flutter/material.dart';

class InteractiveVideosBanner extends StatelessWidget {
  const InteractiveVideosBanner({super.key});

  @override
  Widget build(BuildContext context) {
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
                'https://joyfulkids.arshiya.info/kids/ilv_en.jpg',
                fit: BoxFit.cover,
                height: 180,
                width: double.infinity,
                loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.error, size: 80, color: Colors.red),
              ),
            ),
          ),
          Positioned(
            top: -25,
            right: 20,
            child: Image.network(
              'https://joyfulkids.arshiya.info/kids/images/video-banner-icon.png',
              width: 60,
              height: 60,
              errorBuilder: (context, error, stackTrace) => const SizedBox.shrink(),
            ),
          ),
        ],
      ),
    );
  }
}
