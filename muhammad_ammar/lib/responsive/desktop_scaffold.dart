import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhammad_ammar/widgets/intro_container.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F8FF), // Alice Blue color

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                  ),
                  child: SizedBox(
                      width: Get.width * 0.30, child: const IntroContainer()),
                ),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: OutlinedButton.icon(
      onPressed: () {},
     
      label: const Text(
        "Home",
        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
      ),
    ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text("Services",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text("Resume",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text("Projects",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text("About",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                ),
              
              
               Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.light_mode_outlined),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 241, 154, 202),
                            Color.fromARGB(255, 151, 111, 231)
                          ], //
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          side: const BorderSide(color: Colors.transparent),
                          padding: const EdgeInsets.symmetric(
                              vertical: 16), // Adjust the vertical padding
                        ),
                        onPressed: () {},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.work,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Let's Talk!",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
       
       
          ],
        ),
      ),
    );
  }
}
