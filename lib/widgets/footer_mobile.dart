import 'package:flutter/material.dart';
import 'dart:js' as js;

class FooterMobile extends StatelessWidget {
  const FooterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            color: Colors.black,
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/sew_aranc_background-1.png",
                    width: 250, height: 210),
                Padding(
                  padding: const EdgeInsets.symmetric(),
                  child: Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    alignment: WrapAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          js.context.callMethod('open', [
                            'https://www.facebook.com/profile.php?id=61568198093106'
                          ]);
                        },
                        child: Image.asset("assets/facebook.png", width: 40),
                      ),
                      InkWell(
                        onTap: () {
                          js.context.callMethod('open', [
                            'https://www.instagram.com/mkrtchyansdecor1/?fbclid=IwY2xjawIXT1tleHRuA2FlbQIxMAABHUPnIazC46mYBxvc0JMRHxDlvyT348-ONrrRem4g2QQn835qN7Z9HkI3rA_aem_cAV4AAHwycgmJDCJ1fMDmA#'
                          ]);
                        },
                        child: Image.asset("assets/instagram.png", width: 40),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Container(
            width: double.infinity,
            color: Colors.black,
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Կապ մեզ հետ",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w600)),
                SizedBox(height: 10),
                Text("Հեռ․ 033 99-96-68",
                    style: TextStyle(fontSize: 15, color: Colors.white)),
                Text("Հասցե Երևան, Ադոնց ???",
                    style: TextStyle(fontSize: 15, color: Colors.white)),
              ],
            ),
          ),

          Container(
            color: Colors.black,
            padding: EdgeInsets.symmetric(vertical: 30),
            width: double.infinity,
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  "Mkrtchyans Decor © 2024 All rights reserved",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Made by Areg with Flutter 3.27.0",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
