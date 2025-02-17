import 'package:flutter/material.dart';
import 'dart:js' as js;

class FooterDesktop extends StatelessWidget {
  const FooterDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: Colors.black,
            height: 250,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        "assets/sew_aranc_background-1.png",
                        width: 250,
                        height: 250,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Wrap(
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
                              child: Image.asset(
                                "assets/facebook.png",
                                width: 50,
                              )),
                          InkWell(
                              onTap: () {
                                js.context.callMethod('open', [
                                  'https://www.instagram.com/mkrtchyansdecor1/?fbclid=IwY2xjawIXT1tleHRuA2FlbQIxMAABHUPnIazC46mYBxvc0JMRHxDlvyT348-ONrrRem4g2QQn835qN7Z9HkI3rA_aem_cAV4AAHwycgmJDCJ1fMDmA#'
                                ]);
                              },
                              child: Image.asset(
                                "assets/instagram.png",
                                width: 50,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Կապ մեզ հետ",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        Text("Հեռ․ 033 99-96-68",
                            style: TextStyle(fontSize: 15, color: Colors.white)),
                        Text("Հասցե Երևան, Ադոնց ???",
                            style: TextStyle(fontSize: 15, color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.black,
            padding: EdgeInsets.symmetric(vertical: 30),
            width: double.infinity,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
