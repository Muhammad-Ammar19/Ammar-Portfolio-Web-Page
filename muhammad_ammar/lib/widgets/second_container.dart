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
              style: TextStyle(fontWeight: FontWeight.w700,fontFamily: 'Syne'),
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
            "I'm Muhammad Ammar \nFull Stack Web and App Developer.",
            style: TextStyle(
              fontFamily: 'Syne',
              fontSize: 35, fontWeight: FontWeight.w700,
              color: Colors.white, // This color is overridden by the ShaderMask
            ),
          ),
        ),
        SizedBox(height: Get.height * 0.02),
       Center(
  child: SizedBox(
    height: Get.height *0.055, 
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
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          side: const BorderSide(color: Colors.transparent),
          padding: const EdgeInsets.symmetric(
              vertical: 16), // Adjust the vertical padding
        ),
        onPressed: () {},
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.work,
              color: Colors.white,
              size: 18,
            ),
            SizedBox(width: 5),
            Text(
              "My Works",
              style: TextStyle(fontFamily: 'Syne',
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ),
  ),
),

        SizedBox(height: Get.height * 0.02),
Center(
  child: SizedBox(
    height: Get.height *0.055, // Adjust the height as needed
    width: double.infinity, // Makes the button wide
    child: OutlinedButton.icon(
      onPressed: () {},
      icon: const Icon(
        Icons.download,
      ),
      label: const Text(
        "Download CV",
        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,fontFamily: 'Syne'),
      ),
    ),
  ),
),
      ],
    );
  }
}
