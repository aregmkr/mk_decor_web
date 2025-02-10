import 'package:flutter/material.dart';

import '../constants/colors.dart';


class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0,),
      height: MediaQuery.of(context).size.height / 1.2,
      constraints: const BoxConstraints(minHeight: 350.0,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("MKRTCHYAN's DECOR\nԿազմակերպությունը զբաղվում է ներքին և\nարտաքին վերանորոգման/դեկորատիվ\nաշխատանքներով", style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15,),
              SizedBox(
                  width: 250,
                  child: ElevatedButton(onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColors.orange_m,
                    ),
                    child: Text("Data",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20,),
            child: Image.asset(
              "assets/logo.jpg",
              width: MediaQuery.of(context).size.width / 2,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
