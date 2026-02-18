import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/screens/about_us_screen.dart';

class JoyfulDrawer extends StatelessWidget {
  const JoyfulDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/b1t8d3p.png'),
                fit: BoxFit.cover,
              )
            ),
            child: Row(
                children: [
                    Image.asset('assets/images/joy.png', height: 50),
                    const SizedBox(width: 10),
                    Text(
                        'Joyful Kids',
                        style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                        ),
                    ),
                ]
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: Text('Home', style: GoogleFonts.montserrat()),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              // Navigate to Home if not already there
            },
          ),
          ExpansionTile(
            leading: const Icon(Icons.category),
            title: Text('Category', style: GoogleFonts.montserrat()),
            children: <Widget>[
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30.0),
                title: Text('Interactive Learning', style: GoogleFonts.montserrat()),
                onTap: () {
                  // Handle navigation
                  Navigator.pop(context);
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30.0),
                title: Text('Game Galaxy', style: GoogleFonts.montserrat()),
                onTap: () {
                  // Handle navigation
                  Navigator.pop(context);
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30.0),
                title: Text('Reading Corner', style: GoogleFonts.montserrat()),
                onTap: () {
                  // Handle navigation
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: Text('About Us', style: GoogleFonts.montserrat()),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutUsScreen()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.login),
            title: Text('Login', style: GoogleFonts.montserrat()),
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
