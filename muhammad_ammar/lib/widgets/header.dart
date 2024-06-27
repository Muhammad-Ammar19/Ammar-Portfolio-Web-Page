import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class Header extends StatelessWidget {
  final String activePage;
  final Function(String) onPageSelected;

  const Header({
    super.key,
    required this.activePage,
    required this.onPageSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 18),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          height: MediaQuery.of(context).size.height * 0.080,
          width: MediaQuery.of(context).size.width * 0.85,
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildNavItem('HOME'),
                      _buildNavItem('ABOUTME'),
                      _buildNavItem('PORTFOLIO'),
                      _buildNavItem('SERVICES'),
                      _buildNavItem('CONTACT'),
                    ],
                  ),
                ),
                ShadButton(
                  hoverBackgroundColor: Colors.orange,
                  cursor: SystemMouseCursors.click,
                  pressedBackgroundColor: Colors.orange,
                  backgroundColor: Colors.black,
                  width: 140,height: 50,
                  text: const Text(
                    "Let's Talk",
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(String page) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: TextButton(
        onPressed: () => onPageSelected(page),
        child: Text(
          page,
          style: TextStyle(
            fontSize: 14.5,
            fontFamily: 'Sora',
            fontWeight: FontWeight.w600,
            color: activePage == page ? Colors.orange : Colors.black87,
          ),
        ),
      ),
    );
  }
}