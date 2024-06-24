import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectsContainer extends StatelessWidget {
  const ProjectsContainer({
    super.key,
    required this.projectssectionkey,
  });

  final GlobalKey<State<StatefulWidget>> projectssectionkey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45),
      child: SizedBox(
        key: projectssectionkey,
    
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top:60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.star_rounded,
                  size: 18,
                ),
                label: const Text(
                  "Portfolio",
                  style: TextStyle(fontWeight: FontWeight.w700),
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
                      fontSize: 52,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/AppIcon2.png',
                    width: Get.height * 0.07,
                    fit: BoxFit.cover,
                  ),
                  const Text(
                    'Deeptune - Music Player',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                  ),
                ],
              ),
              const Text(
                  "DeepTune Music Player is a sleek and intuitive app that enhances your music experience with high-quality audio playback, smart recommendations, and customizable playlists. Enjoy your favorite tunes effortlessly with DeepTune's modern design and user-friendly interface.",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25,color: Colors.blueGrey),),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Card(
                        elevation: 4,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          child: Image.asset(
                            "assets/images/5s,7,8Preview1.png",
                            width: double.infinity,
                            height: Get.height * 0.76,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.002,
                    ),
                    Expanded(
                      child: Card(
                        elevation: 4,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          child: Image.asset(
                            "assets/images/5s,7,8Preview2.png",
                            width: double.infinity,
                            height: Get.height * 0.76,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Card(
                        elevation: 4,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          child: Image.asset(
                            "assets/images/5s,7,8Preview3.png",
                            width: double.infinity,
                            height: Get.height * 0.80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.002,
                    ),
                    Expanded(
                      child: Card(
                        elevation: 4,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          child: Image.asset(
                            "assets/images/5s,7,8Preview4.png",
                            width: double.infinity,
                            height: Get.height * 0.80,
                            fit: BoxFit.cover,
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
    );
  }
}
