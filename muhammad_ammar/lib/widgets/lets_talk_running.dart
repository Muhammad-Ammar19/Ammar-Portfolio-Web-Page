import 'package:flutter/material.dart';

class LetsTalkRunning extends StatelessWidget {
  const LetsTalkRunning({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange[500],
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.12,
    );
  }
}