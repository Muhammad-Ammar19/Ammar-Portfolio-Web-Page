import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Stack(children: [
        Row(
          children: [
            Expanded(
              child: Image.network(
                "https://petrix-react.vercel.app/_next/static/media/body_bg.255c616a.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 150, right: 150),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8, top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Hello, I’m Muhammad Ammar,\nFull Stack software developer based \nin Quetta, Pakistan.",
                        style: TextStyle(
                            fontFamily: 'Sora',
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
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
                    ],
                  ),
                ),
                const Text(
                  "I LOVE SOFTWARES",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w900,
                      fontSize: 160,
                      color: Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Icon(
                            Icons.arrow_downward_rounded,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                        Text(
                          "Scroll \nDown",
                          style: TextStyle(
                              fontFamily: 'Sora',
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Feel Free to send me a message \nif you want to improve your projects.",
                          style: TextStyle(
                              fontFamily: 'Sora',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                const link =
                                    "https://pk.linkedin.com/in/muhammad-ammar-1b3980232";
                                launchUrl(Uri.parse(link),
                                    mode: LaunchMode.externalApplication);
                              },
                              child: const Text(
                                "Linkedin.",
                                style: TextStyle(
                                  fontFamily: 'Sora',
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Text(
                                ' Twitter.',
                                style: TextStyle(
                                  fontFamily: 'Sora',
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Text(
                                ' Github.',
                                style: TextStyle(
                                  fontFamily: 'Sora',
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
