import 'package:flutter/material.dart';

class PortfolioRunning extends StatelessWidget {
  const PortfolioRunning({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFEA552B),
      width: double.infinity,
      height: 125,
      child: const Center(
        child: Text(
          "PORTFOLIO",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            fontSize: 70,
          ),
        ),
      ),
    );
  }
}
