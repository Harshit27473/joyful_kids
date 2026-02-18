
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return PreferredSize(
      preferredSize: widget.preferredSize,
      child: Container(
        color: Colors.white,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 4.0, top: 8.0, bottom: 8.0),
                child: SizedBox(
                  height: 54,
                  width: 150,
                  child: Image.asset('assets/images/joy.png', fit: BoxFit.contain),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Row(
                  children: [
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
                        PopupMenuItem<String>(
                          value: 'en',
                          child: Text('English', style: GoogleFonts.montserrat()),
                        ),
                        PopupMenuItem<String>(
                          value: 'fr',
                          child: Text('French', style: GoogleFonts.montserrat()),
                        ),
                        PopupMenuItem<String>(
                          value: 'ar',
                          child: Text('Arabic', style: GoogleFonts.montserrat()),
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
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Icon(Icons.person, color: Colors.white),
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
