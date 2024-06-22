import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhammad_ammar/widgets/fifth_container.dart';
import 'package:muhammad_ammar/widgets/fourth_container.dart';
import 'package:muhammad_ammar/widgets/intro_container.dart';
import 'package:muhammad_ammar/widgets/second_container.dart';
import 'package:muhammad_ammar/widgets/third_container.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

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
          SingleChildScrollView(physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const IntroContainer(), //  Intro container

                  SizedBox(
                    height: Get.height * 0.06,
                  ),

                  const SecondContainer(), // Second Container

                  SizedBox(
                    height: Get.height * 0.06,
                  ),

                  const ThirdContainer(), // Third Container
            
               SizedBox(
                    height: Get.height * 0.06,
                  ),
            
               const FourthContainer(),
  SizedBox(
                    height: Get.height * 0.06,
                  ),
             const FifthContainer()
           
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
