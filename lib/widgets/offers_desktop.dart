import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/skill_items.dart';

class OffersDesktop extends StatelessWidget {
  const OffersDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // image
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 800,
          ),
          child: Wrap(
            spacing: 20,
            runSpacing: 20,
            children: [
              for (int i = 0; i < skillItems.length; ++i)
                Container(
                  width: 1000,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Text(
                        skillItems[i]["title"],
                        style: GoogleFonts.abel(),
                        // style: TextStyle(
                        //   fontWeight: FontWeight.bold,
                        //   fontSize: 32,
                        //   color:  Colors.black,
                        //
                        // ),
                      ),
                      SizedBox(height: 50,),
                      Image.asset(
                        skillItems[i]["img"],
                        width: 500,
                        height: 400,
                        fit: BoxFit.cover,
                      ),
                      // Spacer(),

                    ],
                  ),
                ),
              // name
            ],
          ),
        ),
      ],
    );
  }
}
