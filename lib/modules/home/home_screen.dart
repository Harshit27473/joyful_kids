import 'package:flutter/material.dart';
import 'package:myapp/components/app_footer.dart';
import 'package:myapp/components/joyful_app_bar.dart';
import 'package:myapp/components/joyful_bottom_nav.dart';
import 'package:myapp/components/joyful_drawer.dart';
import 'package:myapp/modules/home/home_banner.dart';
import 'package:myapp/modules/home/home_body.dart';
import 'package:myapp/modules/home/home_body_web.dart';
import 'package:myapp/utils/constants/image_paths.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    debugPrint('HomeScreen: Initializing state');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('HomeScreen: Building UI');
    const JoyfulAppBar appBar = JoyfulAppBar(); // Create an instance

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
              automaticallyImplyLeading: false, // This will remove the hamburger menu
              toolbarHeight: appBar.preferredSize.height,
              flexibleSpace: appBar, // Use the instance here
            ),
            SliverToBoxAdapter(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth < 600) {
                    debugPrint('HomeScreen: Rendering mobile layout (width < 600)');
                    return const Column(
                      children: [
                        HomeBanner(),
                        HomeBody(),
                        AppFooter(),
                      ],
                    );
                  } else {
                    debugPrint('HomeScreen: Rendering web/tablet layout (width >= 600)');
                    return const Column(
                      children: [
                        HomeBanner(),
                        HomeBodyWeb(),
                        AppFooter(),
                      ],
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const JoyfulBottomNav(),
    );
  }
}
