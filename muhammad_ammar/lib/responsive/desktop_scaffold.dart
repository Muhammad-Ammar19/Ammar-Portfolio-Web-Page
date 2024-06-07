import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhammad_ammar/widgets/about_container.dart';
import 'package:muhammad_ammar/widgets/home_container.dart';
import 'package:muhammad_ammar/widgets/projects_container.dart';
import 'package:simple_icons/simple_icons.dart';

class DesktopScaffold extends StatelessWidget {
  DesktopScaffold({super.key});

  final homesectionkey = GlobalKey();
  final projectssectionkey = GlobalKey();
  final servicessectionkey = GlobalKey();
  final aboutsectionkey = GlobalKey();
  final resumesectionkey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(seconds: 1), curve: Curves.easeInOut);
  }

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
              width: Get.width * 0.27,
              child:
                  const IntroContainerDesktop(), // Intro COntainer for Desktop
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(top: 57, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    spacing: 30.0,
                    runSpacing: 30.0,
                    children: [
                      TextButton(
                          onPressed: () {
                            scrollToSection(homesectionkey);
                          },
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
                          onPressed: () {
                            scrollToSection(projectssectionkey);
                          },
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
                          onPressed: () {
                            scrollToSection(aboutsectionkey);
                          },
                          child: const Text(
                            'About',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          )),
                      IconButton.filledTonal(
                        onPressed: () {},
                        icon: const Icon(Icons.dark_mode_outlined),
                      ),
                    ],
                  ),

                  HomeContainer(
                      homesectionkey: homesectionkey), //Home Container

                  ProjectsContainer(
                      projectssectionkey:
                          projectssectionkey), //Projects Container

                  AboutContainer(
                      aboutsectionkey: aboutsectionkey), // About Container
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
        height: Get.height * 0.9,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(38),
          border: Border.all(color: const Color.fromARGB(87, 158, 158, 158)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
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
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
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
      ),
    );
  }
}
