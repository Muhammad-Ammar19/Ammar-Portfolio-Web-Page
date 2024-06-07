import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class DesktopScaffold2 extends StatelessWidget {
  DesktopScaffold2({super.key});

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
      appBar: AppBar(
        toolbarHeight: 100,
        forceMaterialTransparency: true,
        elevation: 10,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 50),
            child: OutlinedButton.icon(
              onPressed: () {},
              label: const Text(
                "Let's Talk",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    fontFamily: 'Syne'),
              ),
              icon: const Icon(Icons.message_rounded),
            ),
          )
        ],
        title: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "ryze.",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    fontFamily: 'Syne'),
              ),
              SizedBox(
                //   color: Colors.blue,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {  scrollToSection(homesectionkey);},
                        child: const Text(
                          "Home",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              fontFamily: 'Syne'),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Services",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              fontFamily: 'Syne'),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Projects",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              fontFamily: 'Syne'),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Resume",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              fontFamily: 'Syne'),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "About Me",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              fontFamily: 'Syne'),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://mixdesign.club/themeforest/braxton/img/demo/1920x1080-bg.webp",
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    key: homesectionkey,                                                   // Home Section
                  
                    color: const Color.fromARGB(132, 33, 149, 243),
                    child: WidgetAnimator(incomingEffect:WidgetTransitionEffects.incomingSlideInFromLeft(duration: const Duration(seconds: 2)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 90.0,left: 100),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  OutlinedButton.icon(
                                      icon: const Icon(
                                        Icons.star_rate_rounded,
                                        size: 22,
                                      ),
                                      onPressed: () {},
                                      label: const Text(
                                        "Let's Meet!",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Syne,',
                                            fontSize: 16),
                                      )),
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
                                      "I'm Muhammad Ammar \nFull Stack Web and \nApp Developer.",
                                      style: TextStyle(
                                        fontFamily: 'Syne',
                                        fontSize: 68,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 60),
                                    child: Row(
                                      children: [
                                        OutlinedButton.icon(
                                            icon: const Icon(Icons.grid_view_rounded,size: 25,),
                                            onPressed: () {},
                                            label: const Text(
                                              "My Works",
                                              style: TextStyle(
                                                fontFamily: 'Syne',
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15),
                                          child: OutlinedButton.icon(
                                              icon:
                                                  const Icon(Icons.download_rounded,size: 30,),
                                              onPressed: () {},
                                              label: const Text(
                                                "Download CV",
                                                style: TextStyle(
                                                  fontFamily: 'Syne',
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white,
                                                ),
                                              )),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(70.0),
                            child: Container( decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                    border: Border.all(color: const Color.fromARGB(146, 158, 158, 158)),color: Colors.black26
                                  ),
                             
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Muhammad \nAmmar',
                                      style: TextStyle(
                                          fontFamily: 'Syne',
                                          fontSize: 35,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Image.asset('assets/images/muhammad-ammar.png',
                                        height: Get.height * 0.37),
                                    const Text(
                                      "Specialization:",
                                      style: TextStyle(color: Color.fromARGB(207, 158, 158, 158),
                                          fontFamily: 'Syne',
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const Text(
                                      "Front End \nand Backend Developer.",
                                      style: TextStyle(
                                          fontFamily: 'Syne',
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const Text(
                                      "Based In:",
                                      style: TextStyle(color: Color.fromARGB(207, 158, 158, 158),
                                          fontFamily: 'Syne',
                                          fontSize: 17,
                                          fontWeight: FontWeight.w200),
                                    ),
                                    const Text(
                                      "Quetta, Pakistan",
                                      style: TextStyle(
                                          fontFamily: 'Syne',
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  Row(
                                   children: [
                                                                IconButton(onPressed: (){}, icon: const Icon(SimpleIcons.github)),
                                   IconButton(onPressed: (){}, icon: const Icon(SimpleIcons.twitter)),
                                   IconButton(onPressed: (){}, icon: const Icon(SimpleIcons.linkedin)), IconButton(onPressed: (){}, icon: const Icon(SimpleIcons.instagram)),
                                                                ])
                              
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                WidgetAnimator(
                    incomingEffect:
                        WidgetTransitionEffects.incomingSlideInFromLeft(),
                    child: Container(
                        color: Colors.red, height: Get.height * 0.07)),
                Container(
                  key: projectssectionkey, // Project Section
                  height: Get.height * 0.9,
                  color: const Color.fromARGB(185, 33, 149, 243),
                  child: const Center(
                      child: Text('Projects Section',
                          style: TextStyle(color: Colors.white))),
                ),
                Container(
                  key: servicessectionkey,
                  height: Get.height * 0.9,
                  color: Colors.transparent,
                  child: const Center(
                      child: Text('Services Section',
                          style: TextStyle(color: Colors.white))),
                ),
                Container(
                  key: aboutsectionkey,
                  height: 600,
                  color: Colors.transparent,
                  child: const Center(
                      child: Text('About Section',
                          style: TextStyle(color: Colors.white))),
                ),
                Container(
                  key: resumesectionkey,
                  height: 600,
                  color: Colors.transparent,
                  child: const Center(
                      child: Text('Resume Section',
                          style: TextStyle(color: Colors.white))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
