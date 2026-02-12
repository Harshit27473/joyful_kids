import 'package:flutter/material.dart';
import 'package:myapp/modules/home/footer.dart';
import 'package:myapp/components/joyful_app_bar.dart';
import 'package:myapp/components/joyful_bottom_nav.dart';
import 'package:myapp/components/joyful_drawer.dart';
import 'package:myapp/modules/home/home_banner.dart';
import 'package:myapp/modules/home/home_body.dart';
import 'package:myapp/modules/home/home_body_web.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const JoyfulAppBar(),
      drawer: const JoyfulDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeBanner(),
            LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 600) {
                  return const HomeBodyWeb();
                } else {
                  return const HomeBody();
                }
              },
            ),
            const AppFooter(),
          ],
        ),
      ),
      bottomNavigationBar: const JoyfulBottomNav(),
    );
  }
}
