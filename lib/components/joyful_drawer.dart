import 'package:flutter/material.dart';

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
                    const Text(
                        'Joyful Kids',
                        style: TextStyle(
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
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              // Navigate to Home if not already there
            },
          ),
          ExpansionTile(
            leading: const Icon(Icons.category),
            title: const Text('Category'),
            children: <Widget>[
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30.0),
                title: const Text('Interactive Learning'),
                onTap: () {
                  // Handle navigation
                  Navigator.pop(context);
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30.0),
                title: const Text('Game Galaxy'),
                onTap: () {
                  // Handle navigation
                  Navigator.pop(context);
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30.0),
                title: const Text('Reading Corner'),
                onTap: () {
                  // Handle navigation
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About Us'),
            onTap: () {
              // Handle navigation
              Navigator.pop(context);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.login),
            title: const Text('Login'),
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
