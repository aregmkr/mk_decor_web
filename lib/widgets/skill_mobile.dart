import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/skill_items.dart';

class SkillMobile extends StatelessWidget {
  const SkillMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 500.0,
      ),
      child: Column(
        children: [
          for (int i = 0; i < skillItems.length; ++i)
            Container(
              width: 400,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Text(
                    skillItems[i]["title"],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: CustomColors.orange_m,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Image.asset(
                    skillItems[i]["img"],
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 40,),
      
                ],
              ),
            ),
        ],
      ),
    );
  }
}
