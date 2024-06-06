import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_icons/simple_icons.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F8FF), // Alice Blue color
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 60),
            child: SizedBox(
              width: Get.width * 0.30,
              child:
                  const IntroContainerDesktop(), // Intro COntainer for Desktop
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(top: 62, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    spacing: 30.0,
                    runSpacing: 30.0,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Home',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Services',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Projects',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Resume',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'About',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          )),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: Get.height * 0.90,
                    color: Colors.blue[100],
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
                                    .white, // This color is overridden by the ShaderMask
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
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
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
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      color: const Color.fromARGB(62, 33, 149, 243),
                      width: double.infinity,
                      height: Get.height * 0.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          OutlinedButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.star_rounded,
                              size: 22,
                            ),
                            label: const Text(
                              "Portfolio",
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
                                "Checkout My Featured Projects",
                                style: TextStyle(
                                 
                                  fontSize: 52, fontWeight: FontWeight.w700,
                                  color: Colors
                                      .white, // This color is overridden by the ShaderMask
                                ),
                              ),
                            ),
                          ),
                    
                        
                    
                    
                    
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IntroContainerDesktop extends StatelessWidget {
  const IntroContainerDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(38),
          border: Border.all(color: const Color.fromARGB(87, 158, 158, 158)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Muhammad\nAmmar',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
            Center(
              child: Image.asset(
                "assets/images/muhammad-ammar.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: Get.height * 0.03),
            const Text(
              'Specialization:',
              style: TextStyle(
                color: Color.fromARGB(255, 78, 76, 76),
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Text(
              'Full Stack Web \nand App Developer',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 17,
              ),
            ),
            SizedBox(height: Get.height * 0.015),
            const Text(
              'Based in:',
              style: TextStyle(
                color: Color.fromARGB(255, 78, 76, 76),
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            const Text(
              'Quetta, Pakistan',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 17,
              ),
            ),
            SizedBox(height: Get.height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(SimpleIcons.facebook),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(SimpleIcons.instagram),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(SimpleIcons.linkedin),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(SimpleIcons.github),
                ),
              ],
            ),
            SizedBox(height: Get.height * 0.018),
            Center(
              child: Container(
                width: double.infinity,
                height: Get.height * 0.055,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 241, 154, 202),
                      Color.fromARGB(255, 151, 111, 231),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    side: const BorderSide(color: Colors.transparent),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Let's Work Together!",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
