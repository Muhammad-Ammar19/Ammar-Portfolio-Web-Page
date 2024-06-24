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
          icon: const Icon(
            Icons.star_rate_rounded,
            size: 18,
          ),
          label: const Text(
            "Portfolio",
            style: TextStyle(fontWeight: FontWeight.w700,fontFamily: 'Syne',fontSize: 10),
          ),
        ),
       
        ShaderMask(
          shaderCallback: (bounds) => const LinearGradient(
            colors: [
              Color.fromARGB(255, 241, 154, 202),
              Color.fromARGB(255, 151, 111, 231)
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ).createShader(bounds),
          child: const Text(
            "Checkout My Featured Projects.",
            style: TextStyle(fontFamily: 'Syne',
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: Get.height * 0.01),
        const Text(
          'Deeptune - Music Player',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 26,fontFamily: 'Syne'),
        ),
       
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Card(
                elevation: 4,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  child: Image.asset(
                    "assets/images/5s,7,8Preview1.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: Get.width * 0.002,
            ),
            Expanded(
              child: Card(
                elevation: 4,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  child: Image.asset(
                    "assets/images/5s,7,8Preview2.png",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Card(
                elevation: 4,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  child: Image.asset(
                    "assets/images/5s,7,8Preview3.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: Get.width * 0.002,
            ),
            Expanded(
              child: Card(
                elevation: 4,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  child: Image.asset(
                    "assets/images/5s,7,8Preview4.png",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
