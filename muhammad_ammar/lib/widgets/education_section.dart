import 'package:flutter/material.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.60,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://petrix-react.vercel.app/_next/static/media/body_bg.255c616a.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton.icon(
            onPressed: () {},
            label: const Text(
              "My Education",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Sora',
                  fontWeight: FontWeight.w600,
                  fontSize: 25),
            ),
            icon: const Icon(
              size: 35,
              Icons.book_rounded,
              color: Colors.black,
            ),
          ),
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
              color: Colors.transparent,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          width: MediaQuery.of(context).size.width * 0.25,
          child: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    '2018 - 2024',
                    style: TextStyle(
                        fontFamily: 'Sora',
                        fontSize: 15,
                        color: Color(0xFFEA552B),
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 55.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bachelor's in Computer Science",
                          style: TextStyle(
                              fontFamily: 'Sora',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Alhamd Islamic University',
                          style: TextStyle(
                              fontFamily: 'Sora',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                color: Color.fromARGB(131, 255, 255, 255),
                height: 20,
                thickness: 1,
              ),
              Row(
                children: [
                  Text(
                    '2018 - 2020',
                    style: TextStyle(
                        fontFamily: 'Sora',
                        fontSize: 15,
                        color: Color(0xFFEA552B),
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 55),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fsc Pre-Engineering",
                          style: TextStyle(
                              fontFamily: 'Sora',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Govt Boys College',
                          style: TextStyle(
                              fontFamily: 'Sora',
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                color: Color.fromARGB(131, 255, 255, 255),
                height: 20,
                thickness: 1,
              ),
              Row(
                children: [
                  Text(
                    '2006 - 2018',
                    style: TextStyle(
                        fontFamily: 'Sora',
                        fontSize: 15,
                        color: Color(0xFFEA552B),
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 55),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Matriculation",
                          style: TextStyle(
                              fontFamily: 'Sora',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'OPF Public School',
                          style: TextStyle(
                              fontFamily: 'Sora',
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
        ],
      )
    ]);
  }
}
