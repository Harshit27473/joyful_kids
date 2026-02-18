
import 'package:flutter/material.dart';

class GameGalaxyScreen extends StatelessWidget {
  const GameGalaxyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game Galaxy'),
      ),
      body: const Center(
        child: Text('Game Galaxy Screen'),
      ),
    );
  }
}
