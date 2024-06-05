import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThirdContainer extends StatelessWidget {
  const ThirdContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OutlinedButton.icon(
            onPressed: () {},
            label: const Text(
              "Portfolio",
              style: TextStyle(fontFamily: 'Syne'),
            )),
        SizedBox(height: Get.height * 0.01),
        ShaderMask(
          shaderCallback: (bounds) => const LinearGradient(
            colors: [
              Color.fromARGB(255, 241, 154, 202),
              Color.fromARGB(255, 151, 111, 231)
            ], //
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ).createShader(bounds),
          child: const Text(
            "Checkout My Featured Projects.",
            style: TextStyle(
              fontFamily: 'Syne',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: Get.height * 0.01),
      ],
    );
  }
}
