import 'package:flutter/material.dart';

class AccountBanner extends StatelessWidget {
  const AccountBanner({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('AccountBanner: Building UI');
    return Card(
      margin: const EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.network(
          'https://joyfulkids.arshiya.info/kids/ma_en.jpg',
          width: double.infinity,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            debugPrint('AccountBanner: Error loading banner image: $error');
            return const Icon(Icons.error);
          },
        ),
      ),
    );
  }
}
