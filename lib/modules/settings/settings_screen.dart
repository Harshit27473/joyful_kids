import 'package:flutter/material.dart';
import 'package:myapp/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings', style: TextStyle()),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Language', style: TextStyle()),
            subtitle: const Text('English', style: TextStyle()),
            leading: const Icon(Icons.language),
            onTap: () {
              // Open language settings
            },
          ),
          SwitchListTile(
            title: const Text('Dark Mode', style: TextStyle()),
            value: themeProvider.themeMode == ThemeMode.dark,
            onChanged: (value) {
              themeProvider.toggleTheme();
            },
            secondary: Icon(themeProvider.themeMode == ThemeMode.dark ? Icons.dark_mode : Icons.light_mode),
          ),
          ListTile(
            title: const Text('System Theme', style: TextStyle()),
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
