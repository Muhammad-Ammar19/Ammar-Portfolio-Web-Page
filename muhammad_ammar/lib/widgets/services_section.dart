import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://petrix-react.vercel.app/_next/static/media/body_bg.255c616a.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 100, left: 350, right: 350),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "I specialize in designing and developing custom web, mobile applications and desktop applications using Flutter for cross-platform compatibility. I provide robust backend solutions with easy API integration through Node.js, Python and Firebase. My services include performance optimization, security and scalability to provide you with high-quality software solutions that meet your needs.",
              style: TextStyle(height: 1.6,
                  fontFamily: 'Sora',
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            Divider(
              color: Color.fromARGB(132, 158, 158, 158),
              height: 100,
            ),
            Text(
              "Front Development",
              style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            Divider(
              color: Color.fromARGB(132, 158, 158, 158),
              height: 100,
            ),
            Text(
              "Backend Development",
              style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            Divider(
              color: Color.fromARGB(132, 158, 158, 158),
              height: 100,
            ),
            Text(
              "Mobile Applications",
              style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            Divider(
              color: Color.fromARGB(132, 158, 158, 158),
              height: 100,
            ),
            Text(
              "RESTful APIs",
              style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            Divider(
              color: Color.fromARGB(132, 158, 158, 158),
              height: 100,
            ),
            Text(
              "Third-Party API Integration",
              style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            Divider(
              color: Color.fromARGB(132, 158, 158, 158),
              height: 100,
            ),
            Text(
              "UI/UX Design",
              style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            Divider(
              color: Color.fromARGB(132, 158, 158, 158),
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
