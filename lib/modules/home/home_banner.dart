import 'package:flutter/material.dart';
import 'package:myapp/utils/constants/image_paths.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('HomeBanner: Building UI');
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            ImagePaths.homeEn,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              debugPrint('HomeBanner: Error loading image ${ImagePaths.homeEn}: $error');
              return const Icon(Icons.error);
            },
          ),
        ),
      ),
    );
  }
}
