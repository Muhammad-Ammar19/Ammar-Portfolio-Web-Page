import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_icons/simple_icons.dart';



class IntroContainer extends StatelessWidget {
  const IntroContainer({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38),
        border: Border.all(color: const Color.fromARGB(87, 158, 158, 158)),
      ),
      width: double.infinity,
     
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Muhammad\nAmmar',
              style: TextStyle(
                  fontFamily: 'Syne',
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
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
                  fontFamily: 'Syne',
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'Full Stack Web and App Developer',
              style: TextStyle(
                fontFamily: 'Syne',
                fontSize: 17,
              ),
            ),
            SizedBox(height: Get.height * 0.01),
            const Text(
              'Based in:',
              style: TextStyle(
                  fontFamily: 'Syne',
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
            const Text('Quetta,Pakistan',
                style: TextStyle(
                  fontFamily: 'Syne',
                  fontSize: 17,
                )),
            SizedBox(height: Get.height * 0.01),
          
            SizedBox(height: Get.height * 0.018),
            Center(
              child: Container(
                height: Get.height * 0.039,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 241, 154, 202),
                      Color.fromARGB(255, 151, 111, 231)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    side: const BorderSide(
                        color: Colors.transparent),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Let's Work Together",
                    style: TextStyle(
                      fontFamily: 'Syne',
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
  }}