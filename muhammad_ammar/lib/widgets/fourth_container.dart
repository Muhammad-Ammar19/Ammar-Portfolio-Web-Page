import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

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
          style: TextStyle(fontWeight: FontWeight.w700, fontFamily: 'Syne',fontSize: 10),
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
                '10+',
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
                    '1.5+',
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
                    '8+',
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
                      "A passionate and dedicated full stack developer. With a strong foundation in both front-end and back-end technologies. \nI specialize in creating dynamic, user-friendly applications and websites. My expertise includes Flutter, Firebase, Hive, MYSQL  and I thrive on bringing innovative ideas to life through clean, efficient code. Whether working on a complex web application or a sleek mobile app, my goal is to deliver exceptional digital experiences that meet and exceed client expectations.",
                      style: TextStyle(
                          fontFamily: 'Syne',
                          fontWeight: FontWeight.w400,
                          fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        height: 44,
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
                          onPressed: () {
                            const link =
                                "https://drive.google.com/file/d/1K_X5jKgZrBrrjZoopGW7HNTek7ETqtqf/view?usp=sharing";
                            launchUrl(Uri.parse(link),
                                mode: LaunchMode.externalApplication);
                          },
                          child: const Text(
                            "Download CV",
                            style: TextStyle(
                              fontFamily: 'Syne',
                              fontWeight: FontWeight.w700,
                              fontSize: 17,
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
