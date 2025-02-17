import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/skill_items.dart';

class OffersDesktop2 extends StatefulWidget {
  const OffersDesktop2({super.key});

  @override
  State<OffersDesktop2> createState() => _OffersDesktop2State();
}

class _OffersDesktop2State extends State<OffersDesktop2> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  void _goToNextPage() {
    if (_currentPage < 2) {
      _controller.animateToPage(
        _currentPage + 1,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _controller.animateToPage(
        0,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _goToPreviousPage() {
    if (_currentPage > 0) {
      _controller.animateToPage(
        _currentPage - 1,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _controller.animateToPage(
        2,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 600,
            width: double.infinity,
            child: PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                Image.asset(
                  "assets/jpg/effect1.jpg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/jpg/effect2.jpg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/jpg/effect3.jpg",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Positioned(
            left: 16,
            child: IconButton(
                onPressed: () {
                  _goToPreviousPage();
                },
                icon: Icon(Icons.arrow_back_ios),
            ),
          ),
          Positioned(
            right: 16,
            child: IconButton(
              onPressed: () {
                _goToNextPage();
              },
              icon: Icon(Icons.arrow_forward_ios),
            ),
          )
        ],
      ),
    );
  }
}
