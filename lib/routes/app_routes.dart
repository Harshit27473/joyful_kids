import 'package:flutter/material.dart';
import 'package:myapp/modules/home/home_screen.dart';
import 'package:myapp/screens/about_us_screen.dart';
import 'package:myapp/screens/game_galaxy_screen.dart';
import 'package:myapp/screens/interactive_learning_videos_screen.dart';
import 'package:myapp/screens/login_screen.dart';
import 'package:myapp/screens/reading_corner_screen.dart';
import 'package:myapp/modules/settings/settings_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/login': (context) => const LoginScreen(),
  '/game_galaxy': (context) => const GameGalaxyScreen(),
  '/reading_corner': (context) => const ReadingCornerScreen(),
  '/settings': (context) => const SettingsScreen(),
  '/about_us': (context) => const AboutUsScreen(),
  '/interactive_learning_videos': (context) => const InteractiveLearningVideosScreen(),
  '/home': (context) => const HomeScreen(),
};
