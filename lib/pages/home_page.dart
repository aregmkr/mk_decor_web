import 'package:first_web_app/constants/nav_items.dart';
import 'package:first_web_app/constants/skill_items.dart';
import 'package:first_web_app/styles/style.dart';
import 'package:first_web_app/widgets/main_desktop.dart';
import 'package:first_web_app/widgets/main_mobile.dart';
import 'package:first_web_app/widgets/site_logo.dart';
import 'package:first_web_app/widgets/skill_mobile.dart';
import 'package:first_web_app/widgets/skills_desktop.dart';
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
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColors.bg,
          endDrawer:  constraints.maxWidth >= 700.0 ? null : const DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // MAIN
              if (constraints.maxWidth >= 700.0)
                const HomeDesktop()
              else
                HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },),
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
              // What we can dp
              Container(
                height: constraints.maxWidth >= medDesktopWidth ? 2400 : 1300, // 800
                padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                width: MediaQueryData().size.width,
                color: Colors.blueGrey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // title
                    const Text("Մեր ծառայությունները", style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.orange_m,
                      ),
                    ),
                    SizedBox(height: 20),
                    if (constraints.maxWidth >= medDesktopWidth)
                      const SkillsDesktop()
                    else
                      const SkillMobile(),
                  ],
                ),
              ),

              // Slide before after
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Container(
                  height: 600.0,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: const BeforeAfterSlider(),
                ),
              ),

              // FOOTER
              Wrap(
                spacing: 12,
                runSpacing: 12,
                alignment: WrapAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      js.context.callMethod('open', ['https://www.facebook.com/profile.php?id=61568198093106']);
                    },
                    child: Image.asset("assets/facebook.png", width: 50,)
                  ),
                  InkWell(
                      onTap: () {
                        js.context.callMethod('open', ['https://www.instagram.com/mkrtchyansdecor1/?fbclid=IwY2xjawIXT1tleHRuA2FlbQIxMAABHUPnIazC46mYBxvc0JMRHxDlvyT348-ONrrRem4g2QQn835qN7Z9HkI3rA_aem_cAV4AAHwycgmJDCJ1fMDmA#']);
                      },
                      child: Image.asset("assets/instagram.png", width: 50,)
                  ),
                ],
              ),

              Container (
                padding: EdgeInsets.symmetric(vertical: 30),
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  "Made by Areg Mk with Flutter 3.27.0"
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
