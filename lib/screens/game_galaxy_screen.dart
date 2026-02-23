
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/app_footer.dart';
import 'package:myapp/components/joyful_app_bar.dart';
import 'package:myapp/components/joyful_bottom_nav.dart';
import 'package:myapp/components/joyful_drawer.dart';
import 'package:myapp/utils/constants/image_paths.dart';

class GameGalaxyScreen extends StatelessWidget {
  const GameGalaxyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final JoyfulAppBar appBar = JoyfulAppBar();

    return Scaffold(
      drawer: const JoyfulDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImagePaths.bodyBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: false,
              snap: true,
              backgroundColor: Colors.transparent,
              // The JoyfulAppBar will handle the leading icon (drawer or back)
              automaticallyImplyLeading: false, 
              toolbarHeight: appBar.preferredSize.height,
              flexibleSpace: appBar,
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(
                    // Adjust height to ensure footer is visible
                    height: MediaQuery.of(context).size.height - 
                           appBar.preferredSize.height - 
                           kBottomNavigationBarHeight - 
                           (MediaQuery.of(context).padding.top + MediaQuery.of(context).padding.bottom) - 150, // Added padding to be safe
                    child: Center(
                      child: Text(
                        'Game Galaxy',
                        style: GoogleFonts.montserrat(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withAlpha((255 * 0.9).round()),
                           shadows: [
                            const Shadow(
                              blurRadius: 10.0,
                              color: Colors.black45,
                              offset: Offset(3.0, 3.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const AppFooter(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const JoyfulBottomNav(),
    );
  }
}
