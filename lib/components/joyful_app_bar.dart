
import 'package:flutter/material.dart';
import 'package:myapp/routes/app_routes.dart';
import 'package:myapp/screens/login_screen.dart';

class JoyfulAppBar extends StatefulWidget implements PreferredSizeWidget {
  const JoyfulAppBar({super.key});

  @override
  State<JoyfulAppBar> createState() => _JoyfulAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(70);
}

class _JoyfulAppBarState extends State<JoyfulAppBar> {
  String _selectedLanguage = 'en';

  @override
  Widget build(BuildContext context) {
    debugPrint('JoyfulAppBar: Building UI');
    return PreferredSize(
      preferredSize: widget.preferredSize,
      child: Container(
        color: Colors.white,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  debugPrint('JoyfulAppBar: Logo tapped, navigating to Home');
                  // Navigate to the home page if not already there
                  if (ModalRoute.of(context)?.settings.name != AppRoutes.home) {
                    Navigator.of(context).pushReplacementNamed(AppRoutes.home);
                  } else {
                    debugPrint('JoyfulAppBar: Already on Home, skipping navigation');
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
                  child: SizedBox(
                    height: 54,
                    width: 150,
                    child: Image.asset('assets/images/joy.png', fit: BoxFit.contain, errorBuilder: (context, error, stackTrace) {
                      debugPrint('JoyfulAppBar: Error loading logo: $error');
                      return const Icon(Icons.error);
                    }),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Row(
                  children: [
                    Builder(
                      builder: (context) => IconButton(
                        icon: const Icon(Icons.menu, color: Colors.black, size: 30),
                        onPressed: () {
                          debugPrint('JoyfulAppBar: Menu button tapped, opening drawer');
                          Scaffold.of(context).openDrawer();
                        },
                      ),
                    ),
                    PopupMenuButton<String>(
                      onSelected: (String value) {
                        debugPrint('JoyfulAppBar: Language changed to $value');
                        setState(() {
                          _selectedLanguage = value;
                        });
                      },
                      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                        const PopupMenuItem<String>(
                          value: 'en',
                          child: Text('English', style: TextStyle()),
                        ),
                        const PopupMenuItem<String>(
                          value: 'fr',
                          child: Text('French', style: TextStyle()),
                        ),
                        const PopupMenuItem<String>(
                          value: 'ar',
                          child: Text('Arabic', style: TextStyle()),
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
                    GestureDetector(
                      onTap: () {
                        debugPrint('JoyfulAppBar: User profile tapped, navigating to Login');
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginScreen()),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Icon(Icons.person, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
