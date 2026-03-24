import 'package:flutter/material.dart';
import 'package:myapp/routes/app_routes.dart';

class JoyfulBottomNav extends StatelessWidget {
  const JoyfulBottomNav({super.key});

  void _onItemTapped(BuildContext context, int index) {
    final String currentRoute = ModalRoute.of(context)?.settings.name ?? '';
    String newRoute;

    switch (index) {
      case 0:
        newRoute = AppRoutes.interactiveLearningVideos;
        break;
      case 1:
        newRoute = AppRoutes.home;
        break;
      case 2:
        newRoute = AppRoutes.gameGalaxy;
        break;
      default:
        return;
    }

    if (currentRoute != newRoute) {
      Navigator.of(context).pushReplacementNamed(newRoute);
    }
  }

  int _getSelectedIndex(BuildContext context) {
    final String currentRoute = ModalRoute.of(context)?.settings.name ?? '';
    if (currentRoute == AppRoutes.home) {
      return 1;
    } else if (currentRoute == AppRoutes.interactiveLearningVideos) {
      return 0;
    } else if (currentRoute == AppRoutes.gameGalaxy) {
      return 2;
    }
    // Default to home if the route is not recognized
    return 1;
  }

  @override
  Widget build(BuildContext context) {
    final int selectedIndex = _getSelectedIndex(context);

    const List<String> iconPaths = [
      'assets/images/footer-icon-1.png',
      'assets/images/footer-home-icon.png',
      'assets/images/footer-game-icon.png',
    ];

    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 2,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(iconPaths.length, (index) {
          return _buildNavItem(
            context: context,
            imagePath: iconPaths[index],
            index: index,
            isSelected: selectedIndex == index,
            isCenter: index == 1,
          );
        }),
      ),
    );
  }

  Widget _buildNavItem({
    required BuildContext context,
    required String imagePath,
    required int index,
    required bool isSelected,
    bool isCenter = false,
  }) {
    final double iconSize = isCenter ? 80 : 40;

    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(30),
          onTap: () => _onItemTapped(context, index),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Opacity(
              opacity: isSelected ? 1.0 : 0.6,
              child: Image.asset(
                imagePath,
                height: iconSize,
                width: iconSize,
                errorBuilder: (context, error, stackTrace) =>
                    Icon(Icons.error, size: iconSize, color: Colors.red),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
