import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     color: Colors.black,
      width: double.infinity,
      height: 200,
      child:  const Center(
        child: Text(
          "ABOUTME",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            fontSize: 85,
            
          ),
        ),
      ),
    );
  }
}
