import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:url_launcher/url_launcher.dart';



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
                  fontWeight: FontWeight.w700,
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
              style: TextStyle(                  fontFamily: 'Syne',
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
            const Text(
              'Full Stack Web \nand App Developer',
              style: TextStyle(                  fontFamily: 'Syne',
                fontWeight: FontWeight.w700,
                fontSize: 17,
              ),
            ),
            SizedBox(height: Get.height * 0.015),
            const Text(
              'Based in:',
              style: TextStyle(    color: Colors.grey,                  fontFamily: 'Syne',
                  fontWeight:FontWeight.w700,
                  fontSize: 16,
                 ),
            ),
            const Text('Quetta, Pakistan',
                style: TextStyle(
                 fontWeight: FontWeight.w700,                  fontFamily: 'Syne',
                  fontSize: 17,
                )),
            SizedBox(height: Get.height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    SimpleIcons.twitter,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    SimpleIcons.instagram,
                  ),
                ),
                IconButton(
                  onPressed: () {  const link = "https://pk.linkedin.com/in/muhammad-ammar-1b3980232";
                                          launchUrl(Uri.parse(link),mode: LaunchMode.externalApplication);},
                  icon: const Icon(
                    SimpleIcons.linkedin,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    SimpleIcons.github,
                  ),
                ),
              ],
            ),
            SizedBox(height: Get.height * 0.018),
            Center(
              child: Container(width: double.infinity,
                height: Get.height * 0.055,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 241, 154, 202),
                      Color.fromARGB(255, 151, 111, 231)
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
                    side: const BorderSide(
                        color: Colors.transparent),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Let's Work Together!",
                    style: TextStyle(                  fontFamily: 'Syne',
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
  }}