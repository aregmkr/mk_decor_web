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
      color: Colors.black,
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
