import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhammad_ammar/widgets/intro_container.dart';
import 'package:muhammad_ammar/widgets/second_container.dart';
import 'package:muhammad_ammar/widgets/third_container.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: const Color(0xFFF0F8FF), // Alice Blue color
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
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
            ],
          ),
        ),
      ),
    );
  }
}
