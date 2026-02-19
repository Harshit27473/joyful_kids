import 'package:flutter/material.dart';
import 'package:myapp/modules/home/home_screen.dart';
import 'package:myapp/screens/game_galaxy_screen.dart';
import 'package:myapp/screens/reading_corner_screen.dart';
import 'package:myapp/modules/settings/settings_screen.dart';
import 'package:myapp/screens/about_us_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Joyful Kids',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/game_galaxy': (context) => const GameGalaxyScreen(),
        '/reading_corner': (context) => const ReadingCornerScreen(),
        '/settings': (context) => const SettingsScreen(),
        '/about_us': (context) => const AboutUsScreen(),
      },
    );
  }
}
