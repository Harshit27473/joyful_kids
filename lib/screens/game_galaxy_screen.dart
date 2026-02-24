
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
    const JoyfulAppBar appBar = JoyfulAppBar();

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
              automaticallyImplyLeading: false, 
              toolbarHeight: appBar.preferredSize.height,
              flexibleSpace: appBar,
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        'Game Galaxy',
                        style: GoogleFonts.montserrat(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.9),
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
