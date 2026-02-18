import 'package:flutter/material.dart';

class ReadingCornerScreen extends StatelessWidget {
  const ReadingCornerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reading Corner'),
      ),
      body: const Center(
        child: Text('Welcome to the Reading Corner!'),
      ),
    );
  }
}