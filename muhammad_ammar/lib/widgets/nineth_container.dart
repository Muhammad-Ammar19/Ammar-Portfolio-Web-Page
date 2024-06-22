import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NinethContainer extends StatelessWidget {
  const NinethContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OutlinedButton.icon(
          icon: const Icon(
            Icons.star_rate_rounded,
            size: 22,
          ),
          onPressed: () {},
          label: const Text(
            "Contact",
            style: TextStyle(
                fontWeight: FontWeight.w700, fontFamily: 'Syne,', fontSize: 15),
          ),
        ),
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
            "Let's make something awesome together!",
            style: TextStyle(
              fontFamily: 'Syne',
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            height: 35,
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
                side: const BorderSide(color: Colors.transparent),
              ),
              onPressed: () {},
              child: const Text(
                "Send Message",
                style: TextStyle(
                  fontFamily: 'Syne',
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
           
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Your Name*',
                      hintStyle: TextStyle(fontFamily: 'Syne')),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Your Company Name*',
                        hintStyle: TextStyle(fontFamily: 'Syne')),
                  ),
                ),
                Padding(
                 padding: const EdgeInsets.only(top: 8),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Email Address*',
                        hintStyle: TextStyle(fontFamily: 'Syne')),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(fontFamily: 'Syne')),
                  ),
                ),
              ],
            ),
          ),
        ),
   const Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Center(
                    child: Text(
                      '2024 Made by Muhammad Ammar',
                      style: TextStyle(
                          fontFamily: 'Syne',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,color: Colors.grey),
                    ),
                  ),
                )   ],
    );
  }
}
