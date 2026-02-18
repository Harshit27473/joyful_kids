import 'package:flutter/material.dart';

class JoyfulBottomNav extends StatefulWidget {
  const JoyfulBottomNav({super.key});

  @override
  State<JoyfulBottomNav> createState() => _JoyfulBottomNavState();
}

class _JoyfulBottomNavState extends State<JoyfulBottomNav> {
  int _selectedIndex = 1; // Default to Home

  final List<String> _iconPaths = [
    'assets/images/footer-icon-1.png',
    'assets/images/footer-home-icon.png',
    'assets/images/footer-game-icon.png',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
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
        children: List.generate(_iconPaths.length, (index) {
          return _buildNavItem(
            imagePath: _iconPaths[index],
            index: index,
            isCenter: index == 1,
          );
        }),
      ),
    );
  }

  Widget _buildNavItem({
    required String imagePath,
    required int index,
    bool isCenter = false,
  }) {
    final bool isSelected = _selectedIndex == index;
    final double iconSize = isCenter ? 80 : 40;

    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(30),
          onTap: () => _onItemTapped(index),
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
