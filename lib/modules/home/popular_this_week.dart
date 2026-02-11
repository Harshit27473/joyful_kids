import 'package:flutter/material.dart';

class PopularThisWeek extends StatelessWidget {
  const PopularThisWeek({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Popular this Week',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildPopularItem(),
                _buildPopularItem(),
                _buildPopularItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPopularItem() {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 16.0),
      decoration: BoxDecoration(
        color: Colors.orange.shade100,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: const Center(
        child: Text('Popular Item'),
      ),
    );
  }
}
