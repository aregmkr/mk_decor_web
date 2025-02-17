import 'package:first_web_app/widgets/show_video.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'dart:js' as js;

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      height: MediaQueryData().size.height,
      constraints: BoxConstraints(minHeight: 560.0,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // avatar img
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
          // intro text
          const SizedBox(height: 30,),
          Text("MKRTCHYAN'S DECOR\nԿազմակերպությունը զբաղվում է ներքին և\nարտաքին վերանորոգման/դեկորատիվ\nաշխատանքներով", style: TextStyle(
            fontSize: 13,
            height: 1.5,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          ),
          const SizedBox(height: 15,),
          SizedBox(
            width: 190.0,
            child: ElevatedButton(onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: CustomColors.orange_m,
              ),
              child: InkWell(
                onTap: () {
                  js.context.callMethod('open', ['https://www.facebook.com/reel/1267446130995208']);
                },
                child: Text("See Magic",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          // btn
        ],
      ),
    );
  }
}
