import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutContainer extends StatelessWidget {
  const AboutContainer({
    super.key,
    required this.aboutsectionkey,
  });

  final GlobalKey<State<StatefulWidget>> aboutsectionkey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: aboutsectionkey,
      child: Padding(
        padding: const EdgeInsets.only(top: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.star_rounded,
                size: 22,
              ),
              label: const Text(
                "About Me",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [
                  Color.fromARGB(255, 241, 154, 202),
                  Color.fromARGB(255, 151, 111, 231)
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ).createShader(bounds),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Turning complex problems into simple design",
                  style: TextStyle(
                    fontFamily: 'Syne',
                    fontSize: 52,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Wrap(
              spacing: 200.0,
              runSpacing: 150.0,
              alignment: WrapAlignment.center,
              children: [
                Column(
                  children: [
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
                        "40+",
                        style: TextStyle(
                          fontFamily: 'Syne',
                          fontSize: 65,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Text(
                      'Happy Clients',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    ShaderMask(
                      shaderCallback: (bounds) => const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 241, 154, 202),
                          Color.fromARGB(255, 151, 111, 231)
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ).createShader(bounds),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "2+",
                          style: TextStyle(
                            fontFamily: 'Syne',
                            fontSize: 65,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Years of Experience',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    ShaderMask(
                      shaderCallback: (bounds) => const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 241, 154, 202),
                          Color.fromARGB(255, 151, 111, 231)
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ).createShader(bounds),
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "10+",
                          style: TextStyle(
                            fontFamily: 'Syne',
                            fontSize: 65,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Projects Done',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),
                    )
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Expanded(
                child: Text(
                  " wonder if I've been changed in the night? Let me think. Was I the same when I got up this morning? I almost think I can remember feeling a little different. But if I'm not the same, \nthe next question is 'Who in the world am I?' Ah, that's the great puzzleBe what you would seem to be or, youd like it put more simplynever imagine yourself not to be otherwise than what it might appear to others that what you were or might have been was not otherwise than what you \nhad been would have appeared to them to be otherwise",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: Get.height * 0.06,
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
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      side: const BorderSide(color: Colors.transparent),
                    ),
                    onPressed: () {},
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.download,
                          color: Colors.white,
                          size: 22,
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          "Download CV",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              indent: 30,
              endIndent: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 60),
                      child: Column(
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Colors.grey),
                          ),
                          Text('Muhammad Ammar',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 18)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 60),
                      child: Column(
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Colors.grey),
                          ),
                          Text('syedammarzaki4@gmail.com',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 18)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 60),
                      child: Column(
                        children: [
                          Text(
                            'Phone',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Colors.grey),
                          ),
                          Text('+923333169167',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 18)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 60),
                      child: Column(
                        children: [
                          Text(
                            'Location',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Colors.grey),
                          ),
                          Text(
                            'Quetta, Pakistan',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
       
       
      
          
          Row(
            children: [
              Container(decoration: const BoxDecoration(color: Color.fromARGB(120, 33, 149, 243)),
                
                
                child:  Column(crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
               const Text("Front End \nDevelopment",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 23),),
               Row(
                
                
                children: [OutlinedButton(onPressed: (){}, child: const Text('Design to Code')),OutlinedButton(onPressed: (){}, child: const Text('UI/UX Design'))],),
              
               const Text("I work With Flutter, Dart an Figma",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 23,color: Colors.grey),),
              
              ],),),
            ],
          ),
       
          ],
        ),
      ),
    );
  }
}
