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
        child: Card(elevation: 0.5,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            height: 80,
            width: 1650,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  ShadButton(decoration: ShadDecoration(border: ShadBorder(radius: BorderRadius.circular(9))),
                    hoverBackgroundColor: const Color(0xFFEA552B),
                    cursor: SystemMouseCursors.click,
                    pressedBackgroundColor:  const Color(0xFFEA552B),
                    backgroundColor: Colors.black,
                    width: 160,height: 55,
                    text: const Text(
                      "Let's Talk",
                      style: TextStyle(
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
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
          fontSize: 16,
          fontFamily: 'Sora',
          fontWeight: FontWeight.w600,
          color: activePage == page ? const Color(0xFFEA552B) : Colors.black87,
        ),
      ),
    ),
  );
}

}