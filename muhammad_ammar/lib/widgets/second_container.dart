import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OutlinedButton.icon(
            onPressed: () {},
            label: const Text(
              "Let's Meet!",
              style: TextStyle(fontFamily: 'Syne'),
            )),
      SizedBox(height: Get.height *0.01),
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
            "I'm Muhammad Ammar \nFull Stack Web and App Developer.",
            style: TextStyle(
              fontFamily: 'Syne',
              fontSize: 30, fontWeight: FontWeight.bold,
              color: Colors.white, // This color is overridden by the ShaderMask
            ),
          ),
        ),
        SizedBox(height: Get.height * 0.02),
        Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 241, 154, 202),
                  Color.fromARGB(255, 151, 111, 231)
                ], //
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1.0),
                ),
                side: const BorderSide(color: Colors.transparent),
              ),
              onPressed: () {},
              child: const Text(
                "My Works",
                style: TextStyle(
                  fontFamily: 'Syne',
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: Get.height * 0.02),
        Center(
            child: OutlinedButton.icon(
                onPressed: () {},
                label: const Text(
                  "Download CV",
                  style: TextStyle(fontFamily: 'Syne', fontSize: 18),
                ))),
      ],
    );
  }
}
