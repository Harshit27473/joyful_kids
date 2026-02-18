import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings', style: GoogleFonts.montserrat()),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Language', style: GoogleFonts.montserrat()),
            subtitle: Text('English', style: GoogleFonts.montserrat()),
            leading: const Icon(Icons.language),
            onTap: () {
              // Open language settings
            },
          ),
          SwitchListTile(
            title: Text('Dark Mode', style: GoogleFonts.montserrat()),
            value: themeProvider.themeMode == ThemeMode.dark,
            onChanged: (value) {
              themeProvider.toggleTheme();
            },
            secondary: Icon(themeProvider.themeMode == ThemeMode.dark ? Icons.dark_mode : Icons.light_mode),
          ),
          ListTile(
            title: Text('System Theme', style: GoogleFonts.montserrat()),
            leading: const Icon(Icons.auto_mode),
            onTap: () {
              themeProvider.setSystemTheme();
            },
          ),
        ],
      ),
    );
  }
}
