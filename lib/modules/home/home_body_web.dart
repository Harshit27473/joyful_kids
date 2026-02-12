import 'package:flutter/material.dart';

class HomeBodyWeb extends StatelessWidget {
  const HomeBodyWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Collections',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 4,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: [
                _buildGridItem('assets/images/4lW2sde.png'),
                _buildGridItem('assets/images/8Jg7q4k.png'),
                _buildGridItem('assets/images/9v8qZ9e.png'),
                _buildGridItem('assets/images/JCRb7t9.png'),
                _buildGridItem('assets/images/P20xX5d.png'),
                _buildGridItem('assets/images/Y1gE9h2.png'),
                _buildGridItem('assets/images/b1t8d3p.png'),
                _buildGridItem('assets/images/pYv2x6f.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(String imagePath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
