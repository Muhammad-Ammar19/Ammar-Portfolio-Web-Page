import 'package:flutter/material.dart';
import 'package:muhammad_ammar/widgets/about_me_running.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
      ),
      endDrawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 800,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://petrix-react.vercel.app/_next/static/media/body_bg.255c616a.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Flexible(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Hello, I’m Muhammad Ammar,\nFull Stack software developer based \nin Quetta, Pakistan.",
                        style: TextStyle(
                          fontFamily: 'Sora',
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black)),
                            child: const Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Icon(
                                Icons.play_arrow_rounded,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Work \nProcess",
                              style: TextStyle(
                                  fontFamily: 'Sora',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        "I LOVE SOFTWARES",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w900,
                            fontSize: 56,
                            color: Colors.black),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Icon(
                              Icons.arrow_downward_rounded,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                          Text(
                            "Scroll \nDown",
                            style: TextStyle(
                                fontFamily: 'Sora',
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                        ],
                      ),
                      const Text(
                        "Feel Free to send me a message \nif you want to improve your projects.",
                        style: TextStyle(
                            fontFamily: 'Sora',
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const AboutMe(),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image:  NetworkImage(
                          "https://petrix-react.vercel.app/images/golden_bg.jpg"),fit: BoxFit.cover,)),
                      child: const Column(children: [Image(image: AssetImage("assets/images/ammarbg.png",),height: 700,width: double.infinity,)],),  ),
          ],
        ),
      ),
    );
  }
}
