import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColors.bg_darker,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.close)),
          ),
          for (int i = 0; i < navIcons.length; ++i)
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              leading: Icon(navIcons[i], color: CustomColors.orange_m),
              title: Text(navTitles[i]),
              titleTextStyle: TextStyle(
                color: CustomColors.orange_m,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              onTap: () {},
            ),
        ],
      ),
    );
  }
}
