

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({
    super.key,
    required this.homesectionkey,
  });

  final GlobalKey<State<StatefulWidget>> homesectionkey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: homesectionkey,
      width: double.infinity,
      height: Get.height * 0.90,
     
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.star_rounded,
              size: 22,
            ),
            label: const Text(
              "Let's Meet!",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              colors: [
                Color.fromARGB(255, 241, 154, 202),
                Color.fromARGB(255, 151, 111, 231)
              ], //
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ).createShader(bounds),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "I'm Muhammad Ammar \nFull Stack Web, Desktop\n and App Developer.",
                style: TextStyle(
                  fontFamily: 'Syne',
                  fontSize: 52, fontWeight: FontWeight.w700,
                  color: Colors
                      .white, 
                ),
              ),
            ),
          ),
          Row(
            children: [
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.grid_view_rounded,
                  size: 22,
                ),
                label: const Text(
                  "My Works",
                  style: TextStyle(fontFamily: 'Syne',
                      fontWeight: FontWeight.w700, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.download_rounded,
                    size: 22,
                  ),
                  label: const Text(
                    "Download CV",
                    style: TextStyle(fontFamily: 'Syne',
                        fontWeight: FontWeight.w700,
                        fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}