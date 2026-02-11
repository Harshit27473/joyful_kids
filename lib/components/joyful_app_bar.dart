import 'package:flutter/material.dart';

class JoyfulAppBar extends StatelessWidget implements PreferredSizeWidget {
  const JoyfulAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 1,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Image.asset('assets/images/joy.png', height: 40),
      ),
      actions: [
        Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.black, size: 30),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        PopupMenuButton<String>(
          onSelected: (value) {
            // Handle language change
          },
          icon: const Icon(Icons.language, color: Colors.black, size: 30),
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'en',
              child: Text('English'),
            ),
            const PopupMenuItem<String>(
              value: 'fr',
              child: Text('French'),
            ),
            const PopupMenuItem<String>(
              value: 'ar',
              child: Text('Arabic'),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(right: 16.0, left: 8.0),
          child: CircleAvatar(
            backgroundColor: Colors.black12,
            child: Icon(Icons.person, color: Colors.black),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
