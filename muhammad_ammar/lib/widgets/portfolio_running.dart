import 'package:flutter/material.dart';

class PortfolioRunning extends StatelessWidget {
  const PortfolioRunning({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFEA552B),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.15,
      child:  Center(
        child: Text(
          "PORTFOLIO",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            fontSize: 85,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 1
              ..color = Colors.white,
          ),
        ),
      ),
    );
  }
}
