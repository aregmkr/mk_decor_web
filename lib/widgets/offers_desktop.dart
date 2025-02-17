import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/skill_items.dart';

class OffersDesktop extends StatelessWidget {
  const OffersDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // image
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 800,
              maxHeight: 800,
            ),
            child: SizedBox(
              height: 800,
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  for (int i = 0; i < offerItems.length; ++i)
                    ZoomEffectItem(
                      title: offerItems[i]["title"],
                      imagePath: offerItems[i]["img"],
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ZoomEffectItem extends StatefulWidget {
  final String title;
  final String imagePath;

  const ZoomEffectItem(
      {super.key, required this.title, required this.imagePath});

  @override
  _ZoomEffectItemState createState() => _ZoomEffectItemState();
}

class _ZoomEffectItemState extends State<ZoomEffectItem> {
  double _scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _scale = 1.2;
        });
      },
      onExit: (_) {
        setState(() {
          _scale = 1.0;
        });
      },
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 300),
        child: Container(
          width: 350,
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Text(
                widget.title,
                style: GoogleFonts.abel(),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  widget.imagePath,
                  width: 250,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
