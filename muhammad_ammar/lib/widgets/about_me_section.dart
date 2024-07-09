import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      width: double.infinity,
      child: Stack(fit: StackFit.expand, children: [
        Image.network(
          "https://petrix-react.vercel.app/images/golden_bg.jpg",
          fit: BoxFit.cover,
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                image:
                    AssetImage("assets/images/ammarbg.png"),
              ),
              const SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    "https://petrix-react.vercel.app/_next/static/media/about_shapes.df78a495.png",
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: const Text(
                        "Hello! I am Muhammad Ammar, Full Stack Flutter Developer from Quetta. I have extensive experience in both app and web development and specialize in creating smooth and responsive applications. I am also familiar with web technologies. I enjoy discussing and working on unique projects that bring innovative solutions to life.",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontFamily: 'Sora',
                          fontWeight: FontWeight.w600,
                          height: 1.8, 
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  const SizedBox(
                      height: 15), 
                  const Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "12+",
                                style: TextStyle(
                                  fontSize: 55,
                                  color: Colors.black,
                                  fontFamily: 'Sora',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                              "Years Of \nExperience",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontFamily: 'Sora',fontWeight: FontWeight.w700
                              ),
                                                        ),
                            ),  ],
                          ),
                        
                        ],
                      ),
                      SizedBox(width: 25),
                      Column(
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "12+",
                                style: TextStyle(
                                  fontSize: 55,
                                  color: Colors.black,
                                  fontFamily: 'Sora',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              "Successful \nProjects",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontFamily: 'Sora',fontWeight: FontWeight.w700
                              ),
                            ),
                          ),   ],
                          ),
                         
                        ],
                      ),
                    ],
                  ),
                  
                  ShadButton(decoration: const ShadDecoration(shadows: ShadShadows.sm,border: ShadBorder(radius: BorderRadius.all(Radius.circular(8)))),
                    hoverBackgroundColor: const Color(0xFFEA552B),
                    cursor: SystemMouseCursors.click,
                    pressedBackgroundColor: const Color(0xFFEA552B),
                    backgroundColor: Colors.black,
                    height: 65,
                    width: 200,
                    text: const Center(
                      child: Text(
                        "DOWNLOAD CV",
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
