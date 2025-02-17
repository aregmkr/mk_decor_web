import 'package:first_web_app/constants/nav_items.dart';
import 'package:first_web_app/constants/skill_items.dart';
import 'package:first_web_app/styles/style.dart';
import 'package:first_web_app/widgets/footer_desktop.dart';
import 'package:first_web_app/widgets/footer_mobile.dart';
import 'package:first_web_app/widgets/main_desktop.dart';
import 'package:first_web_app/widgets/main_mobile.dart';
import 'package:first_web_app/widgets/site_logo.dart';
import 'package:first_web_app/widgets/offers_mobile.dart';
import 'package:first_web_app/widgets/offers_desktop.dart';
import 'package:flutter/material.dart';
import 'package:first_web_app/constants/colors.dart';
import '../widgets/before_after.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import 'package:before_after/before_after.dart';
import 'dart:js' as js;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
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
          scrollDirection: Axis.vertical,
          children: [
            // MAIN
            if (constraints.maxWidth >= medDesktopWidth)
              const HomeDesktop()
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
              MainDesktop()
            else
              MainMobile(),
            // What we can do
            Container(
              height: constraints.maxWidth >= medDesktopWidth ? 2400 : 1300,
              padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
              width: MediaQueryData().size.width,
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // title
                  const Text(
                    "Մեր ծառայությունները",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.orange_m,
                    ),
                  ),
                  SizedBox(height: 20),
                  if (constraints.maxWidth >= medDesktopWidth)
                    const OffersDesktop()
                  else
                    const OffersMobile(),
                ],
              ),
            ),

            // Slide before after
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Container(
                height: constraints.maxWidth >= medDesktopWidth ? 600 : 300,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: const BeforeAfterSlider(),
              ),
            ),

            // FOOTER
            if (constraints.maxWidth >= medDesktopWidth)
              FooterDesktop()
            else
              FooterMobile(),
          ],
        ),
      );
    });
  }
}
