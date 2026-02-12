import 'package:flutter/material.dart';

class JoyfulAppBar extends StatefulWidget implements PreferredSizeWidget {
  const JoyfulAppBar({super.key});

  @override
  State<JoyfulAppBar> createState() => _JoyfulAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _JoyfulAppBarState extends State<JoyfulAppBar> {
  String _selectedLanguage = 'en';

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
          onSelected: (String value) {
            setState(() {
              _selectedLanguage = value;
            });
          },
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
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade600, width: 1),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              _selectedLanguage.toUpperCase(),
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
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
}
