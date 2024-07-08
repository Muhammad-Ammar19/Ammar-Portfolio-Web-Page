import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     color: Colors.black,
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.20,
      child:  Center(
        child: Text(
          "ABOUTME",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            fontSize: 90,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 0.8
              ..color = Colors.white,
          ),
        ),
      ),
    );
  }
}
