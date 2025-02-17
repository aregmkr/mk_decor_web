import 'package:first_web_app/widgets/footer_desktop.dart';
import 'package:first_web_app/widgets/footer_mobile.dart';
import 'package:first_web_app/widgets/main_desktop.dart';
import 'package:first_web_app/widgets/main_mobile.dart';
import 'package:first_web_app/widgets/offers_mobile.dart';
import 'package:flutter/material.dart';
import 'package:first_web_app/constants/colors.dart';
import '../widgets/before_after.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/variant_for_offers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navBarKeys = List.generate(4, (index) => GlobalKey());

  final medDesktopWidth = 900.0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColors.white_m,
        endDrawer: constraints.maxWidth >= medDesktopWidth
            ? null
            : const DrawerMobile(),
        body: ListView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          children: [
            // MAIN
            if (constraints.maxWidth >= medDesktopWidth)
              HomeDesktop(
                onNavMenuTap: (int index) {
                  scrollToSection(index);
                },
              )
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),
            // Line
            Container(
              height: 2,
              width: double.infinity,
              color: CustomColors.white_m,
            ),
            // Line
            // About
            if (constraints.maxWidth >= medDesktopWidth)
              MainDesktop(
                key: navBarKeys[0],
              )
            else
              MainMobile(key: navBarKeys[0],),
            // What we can do
            Container(
              key: navBarKeys[2],
              height: constraints.maxWidth >= medDesktopWidth ? 800 : 1300,
              padding: EdgeInsets.fromLTRB(25, 20, 25, 0),
              width: MediaQueryData().size.width,
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // title
                  const Text(
                    "Մեր առաջարկները",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.orange_m,
                    ),
                  ),
                  SizedBox(height: 20),
                  if (constraints.maxWidth >= medDesktopWidth)
                    const OffersDesktop2()
                  else
                    const OffersMobile(),
                ],
              ),
            ),

            // Slide before after
            Container(
              key: navBarKeys[1],
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Container(
                  height: constraints.maxWidth >= medDesktopWidth ? 600 : 400,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: const BeforeAfterSlider(),
                ),
              ),
            ),

            // FOOTER
            if (constraints.maxWidth >= medDesktopWidth)
              FooterDesktop(
                key: navBarKeys[3],
              )
            else
              FooterMobile(key: navBarKeys[3],),
          ],
        ),
      );
    });
  }

  void scrollToSection(int index) {
    if (index < 0 || index >= navBarKeys.length) return;

    final keyContext = navBarKeys[index].currentContext;
    if (keyContext != null) {
      Scrollable.ensureVisible(
        keyContext,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }
}
