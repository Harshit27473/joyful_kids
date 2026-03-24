import 'package:flutter/material.dart';
import 'package:myapp/modules/home/home_screen.dart';
import 'package:myapp/screens/about_us_screen.dart';
import 'package:myapp/screens/game_galaxy_screen.dart';
import 'package:myapp/screens/interactive_learning_videos_screen.dart';
import 'package:myapp/screens/login_screen.dart';
import 'package:myapp/screens/reading_corner_screen.dart';
import 'package:myapp/modules/settings/settings_screen.dart';
import 'package:myapp/screens/splash_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String home = '/home';
  static const String login = '/login';
  static const String gameGalaxy = '/game_galaxy';
  static const String readingCorner = '/reading_corner';
  static const String settings = '/settings';
  static const String aboutUs = '/about_us';
  static const String interactiveLearningVideos = '/interactive_learning_videos';

  static final Map<String, WidgetBuilder> routes = {
    splash: (context) => const SplashScreen(),
    home: (context) => const HomeScreen(),
    login: (context) => const LoginScreen(),
    gameGalaxy: (context) => const GameGalaxyScreen(),
    readingCorner: (context) => const ReadingCornerScreen(),
    settings: (context) => const SettingsScreen(),
    aboutUs: (context) => const AboutUsScreen(),
    interactiveLearningVideos: (context) => const InteractiveLearningVideosScreen(),
  };
}
