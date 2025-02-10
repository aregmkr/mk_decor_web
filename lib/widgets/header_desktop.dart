import 'package:first_web_app/widgets/site_logo.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/nav_items.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container (
      height: 60.0,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20,),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Colors.transparent,
              CustomColors.yellow_m
            ]
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          SiteLogo(onTap: () {

          },),
          Spacer(),
          for (int i = 0; i < navTitles.length; ++i)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(),
                child: Text(
                  navTitles[i],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.white_m,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
