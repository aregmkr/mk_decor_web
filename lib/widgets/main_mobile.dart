import 'package:flutter/material.dart';
import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      height: MediaQueryData().size.height,
      constraints: BoxConstraints(minHeight: 560.0,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // avatar img
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/logo.jpg",
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // intro text
          const SizedBox(height: 30,),
          Text("MKRTCHYAN's DECOR\nԿազմակերպությունը զբաղվում է ներքին և\nարտաքին վերանորոգման/դեկորատիվ\nաշխատանքներով", style: TextStyle(
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
              child: Text("Data",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          // btn
        ],
      ),
    );
  }
}
