import 'package:first_web_app/widgets/show_video.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;
import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 0.0), // Full width
          height:
              MediaQuery.of(context).size.height / 1.2, // Set desired height
          constraints: const BoxConstraints(
            minHeight: 350.0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Text(
                      "MKRTCHYAN'S DECOR\nԿազմակերպությունը զբաղվում է ներքին և\nարտաքին վերանորոգման/դեկորատիվ\nաշխատանքներով",
                      style: const TextStyle(
                        fontSize: 16,
                        height: 1.5,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 250,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: CustomColors.orange_m,
                      ),
                      child: InkWell(
                        onTap: () {
                          js.context.callMethod('open', [
                            'https://www.facebook.com/reel/1267446130995208'
                          ]);
                        },
                        child: Text(
                          "See Magic",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                flex: 2, // Takes 2/3 of the screen
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      // Video background
                      Positioned.fill(
                        child: VideoBackground(
                          videoPath: "assets/mp4/video_decor.mp4",
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
