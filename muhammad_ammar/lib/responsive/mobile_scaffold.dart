import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:muhammad_ammar/widgets/eighth_container.dart';
import 'package:muhammad_ammar/widgets/fifth_container.dart';
import 'package:muhammad_ammar/widgets/fourth_container.dart';
import 'package:muhammad_ammar/widgets/intro_container.dart';
import 'package:muhammad_ammar/widgets/nineth_container.dart';
import 'package:muhammad_ammar/widgets/second_container.dart';
import 'package:muhammad_ammar/widgets/seventh_container.dart';
import 'package:muhammad_ammar/widgets/sixth_container.dart';
import 'package:muhammad_ammar/widgets/third_container.dart';


class MobileScaffold extends StatelessWidget {
  MobileScaffold({super.key});

  final homesectionkey = GlobalKey();
  final projectssectionkey = GlobalKey();
  final contactsectionkey = GlobalKey();
  final aboutsectionkey = GlobalKey();
  final resumesectionkey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(seconds: 1), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://mixdesign.club/themeforest/braxton/img/demo/1920x1080-bg.webp",
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
          
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IntroContainer(key: homesectionkey), // Intro container
                  SizedBox(
                    height: Get.height * 0.06,
                  ),
                  const SecondContainer(), // Second Container
                  SizedBox(
                    height: Get.height * 0.06,
                  ),
                   ThirdContainer(  key: projectssectionkey,), // Third Container
                  SizedBox(
                    height: Get.height * 0.06,
                  ),
                  const FourthContainer(
                  
                  ),
                  SizedBox(
                    height: Get.height * 0.06,
                  ),
                  const FifthContainer(),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                 const SixthContainer(),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                 SeventhContainer(key: resumesectionkey,),
                  SizedBox(
                    height: Get.height * 0.06,
                  ),
                  const EighthContainer(),
                  SizedBox(
                    height: Get.height * 0.06,
                  ),
                  NinethContainer(
                    key: contactsectionkey,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CrystalNavigationBar(splashColor: const Color.fromARGB(57, 206, 137, 247),
        backgroundColor: Colors.transparent,
        enableFloatingNavBar: true,
        enablePaddingAnimation: true,
   
        items: [
          CrystalNavigationBarItem(icon: Icons.home,  selectedColor: const Color.fromARGB(213, 231, 166, 243),),
          CrystalNavigationBarItem(icon: Icons.work_outline_rounded,  selectedColor: const Color.fromARGB(213, 231, 166, 243)),
          CrystalNavigationBarItem(icon: Icons.email_outlined,  selectedColor: const Color.fromARGB(213, 231, 166, 243)),
         CrystalNavigationBarItem(icon: Icons.app_registration_rounded,  selectedColor: const Color.fromARGB(213, 231, 166, 243)),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              scrollToSection(homesectionkey);
              break;
            case 1:
              scrollToSection(projectssectionkey);
              break;
            case 2:
              scrollToSection(contactsectionkey);
              break;
            case 3:
              scrollToSection(resumesectionkey);
              break;
          }
        },
      ),
    );
  }
}
