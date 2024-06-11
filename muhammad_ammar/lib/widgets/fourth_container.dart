import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FourthContainer extends StatelessWidget {
  const FourthContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      OutlinedButton.icon(
        onPressed: () {},
        icon: const Icon(
          Icons.star_rate_rounded,
          size: 18,
        ),
        label: const Text(
          "About Me",
          style: TextStyle(fontWeight: FontWeight.w700,fontFamily: 'Syne'),
        ),
      ),
      SizedBox(height: Get.height * 0.01),
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
          "Turning complex problems into simple designs ",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                '40+',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Syne',
                    fontSize: 45),
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
                child: const Text(
                  "Happy Clients",
                  style: TextStyle(
                    fontFamily: 'Syne',
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
              Column(
                children: [
                  const Text(
                    '2+',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Syne',
                        fontSize: 45),
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
                    child: const Text(
                      "Years of Experience",
                      style: TextStyle(
                        fontFamily: 'Syne',
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    '12+',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Syne',
                        fontSize: 45),
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
                    child: const Text(
                      "Projects",
                      style: TextStyle(
                        fontFamily: 'Syne',
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
               Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    const Text(
                      "I wonder if I've been changed in the night? Let me think. Was I the same when I got up this morning? I almost think I can remember feeling a little different. But if I'm not the same, the next question is 'Who in the world am I?' Ah, that's the great puzzle!Be what you would seem to be - or, if you'd like it put more simply - never imagine yourself",
                      style: TextStyle(
                          fontFamily: 'Syne', fontWeight: FontWeight.w500,fontSize: 20),
                    ),
                                 
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                                  height: 43,
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
                    "Download CV",
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
                                 
                  ],
                ),
              ),
            

            
            ],
          ),
        ),
      ),
    ]);
  }
}
