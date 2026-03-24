import 'package:flutter/material.dart';
import 'package:myapp/screens/about_us_screen.dart';
import 'package:myapp/utils/constants/app_colors.dart';
import 'package:myapp/utils/constants/image_paths.dart';

class JoyfulDrawer extends StatelessWidget {
  const JoyfulDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: AppColors.drawerHeaderColor,
            ),
            child: Row(
                children: [
                    Image.asset(ImagePaths.joy, height: 50),
                ]
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: AppColors.black54),
            title: const Text('Home', style: TextStyle(color: AppColors.black87)),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              // Navigate to Home if not already there
            },
          ),
          ExpansionTile(
            leading: const Icon(Icons.category, color: AppColors.black54),
            iconColor: AppColors.black54,
            collapsedIconColor: AppColors.black54,
            title: const Text('Category', style: TextStyle(color: AppColors.black87)),
            children: <Widget>[
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30.0),
                title: const Text('Interactive Learning', style: TextStyle(color: AppColors.black87)),
                onTap: () {
                  // Handle navigation
                  Navigator.pop(context);
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30.0),
                title: const Text('Game Galaxy', style: TextStyle(color: AppColors.black87)),
                onTap: () {
                  // Handle navigation
                  Navigator.pop(context);
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30.0),
                title: const Text('Reading Corner', style: TextStyle(color: AppColors.black87)),
                onTap: () {
                  // Handle navigation
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          ListTile(
            leading: const Icon(Icons.info, color: AppColors.black54),
            title: const Text('About Us', style: TextStyle(color: AppColors.black87)),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutUsScreen()));
            },
          ),
          const Divider(color: AppColors.grey),
          ListTile(
            leading: const Icon(Icons.login, color: AppColors.black54),
            title: const Text('Login', style: TextStyle(color: AppColors.black87)),
            onTap: () {
              // Handle navigation
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
