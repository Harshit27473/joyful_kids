import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/screens/about_us_screen.dart';

class JoyfulDrawer extends StatelessWidget {
  const JoyfulDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey[800],
            ),
            child: Row(
                children: [
                    Image.asset('assets/images/joy.png', height: 50),
                ]
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: Colors.grey),
            title: Text('Home', style: GoogleFonts.montserrat(color: Colors.grey[400])),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              // Navigate to Home if not already there
            },
          ),
          ExpansionTile(
            leading: const Icon(Icons.category, color: Colors.grey),
            iconColor: Colors.grey,
            collapsedIconColor: Colors.grey,
            title: Text('Category', style: GoogleFonts.montserrat(color: Colors.grey[400])),
            children: <Widget>[
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30.0),
                title: Text('Interactive Learning', style: GoogleFonts.montserrat(color: Colors.grey[400])),
                onTap: () {
                  // Handle navigation
                  Navigator.pop(context);
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30.0),
                title: Text('Game Galaxy', style: GoogleFonts.montserrat(color: Colors.grey[400])),
                onTap: () {
                  // Handle navigation
                  Navigator.pop(context);
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30.0),
                title: Text('Reading Corner', style: GoogleFonts.montserrat(color: Colors.grey[400])),
                onTap: () {
                  // Handle navigation
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          ListTile(
            leading: const Icon(Icons.info, color: Colors.grey),
            title: Text('About Us', style: GoogleFonts.montserrat(color: Colors.grey[400])),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutUsScreen()));
            },
          ),
          const Divider(color: Colors.grey),
          ListTile(
            leading: const Icon(Icons.login, color: Colors.grey),
            title: Text('Login', style: GoogleFonts.montserrat(color: Colors.grey[400])),
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
