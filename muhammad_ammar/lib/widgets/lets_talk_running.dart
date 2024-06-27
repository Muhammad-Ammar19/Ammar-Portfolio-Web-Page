import 'package:flutter/material.dart';

class LetsTalkRunning extends StatelessWidget {
  const LetsTalkRunning({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     color: const Color(0xFFEA552B),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.12,
  
  child: const Center(
    child: Text(
            "LETS'S TALK",
            style: TextStyle(
                fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 70),
          ),
  ),
    );
  }
}