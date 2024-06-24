import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EighthContainer extends StatelessWidget {
  const EighthContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OutlinedButton.icon(
          icon: const Icon(
            Icons.star_rate_rounded,
            size: 18,
          ),
          onPressed: () {},
          label: const Text(
            "Resume",
            style: TextStyle(
                fontWeight: FontWeight.w700, fontFamily: 'Syne,', fontSize: 10),
          ),
        ),
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
            "Education and Practical\nExperience",
            style: TextStyle(
              fontFamily: 'Syne',
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10,bottom: 10),
          child: Text(
            "My Education",
            style: TextStyle(
                fontFamily: 'Syne', fontSize: 25, fontWeight: FontWeight.w700),
          ),
        ),
        const Divider(color: Colors.grey, height: 2),
        const Padding(
          padding: EdgeInsets.only(top: 25,bottom: 25),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '2018 - 2020',
                style: TextStyle(fontFamily: 'Syne', fontSize: 18,color: Colors.grey),
              ),
              Text(
                'Fsc - Pre Engineering',
                style: TextStyle(
                    fontFamily: 'Syne',
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'Govt Boys Inter College, Quetta',
                style: TextStyle(
                    fontFamily: 'Syne',
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        const Divider(color: Colors.grey, height: 2),
        const Padding(
          padding: EdgeInsets.only(top: 25,bottom: 25),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '2020 - 2024',
                style: TextStyle(fontFamily: 'Syne', fontSize: 18,color: Colors.grey),
              ),
              Text(
                "Bachelor's of Computer Science",
                style: TextStyle(
                    fontFamily: 'Syne',
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'Alhamd Islamic University',
                style: TextStyle(
                    fontFamily: 'Syne',
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 25,bottom: 10),
          child: Text(
            "Certifications",
            style: TextStyle(
                fontFamily: 'Syne', fontSize: 25, fontWeight: FontWeight.w700),
          ),
        ),
        const Divider(color: Colors.grey, height: 2),
        const Padding(
          padding: EdgeInsets.only(top: 25,bottom: 25),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '2023',
                style: TextStyle(fontFamily: 'Syne', fontSize: 18,color: Colors.grey),
              ),
              Text(
                "Blockchain Specialization",
                style: TextStyle(
                    fontFamily: 'Syne',
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'University of Buffalo',
                style: TextStyle(
                    fontFamily: 'Syne',
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        const Divider(color: Colors.grey, height: 2),
        const Padding(
          padding: EdgeInsets.only(top: 25,bottom: 25),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '2023',
                style: TextStyle(fontFamily: 'Syne', fontSize: 18,color: Colors.grey),
              ),
              Text(
                "Foundations of User Experience (UX) Design",
                style: TextStyle(
                    fontFamily: 'Syne',
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'Coursera',
                style: TextStyle(
                    fontFamily: 'Syne',
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        const Divider(color: Colors.grey, height: 2),
        const Padding(
          padding: EdgeInsets.only(top: 25,bottom: 25),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '2023 - 2024',
                style: TextStyle(fontFamily: 'Syne', fontSize: 18,color: Colors.grey),
              ),
              Text(
                "Google IT Support Professional Certificate",
                style: TextStyle(
                    fontFamily: 'Syne',
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'Coursera',
                style: TextStyle(
                    fontFamily: 'Syne',
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        const Divider(color: Colors.grey, height: 2),
        const Padding(
          padding: EdgeInsets.only(top: 25,bottom: 25),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '2023 - 2024',
                style: TextStyle(fontFamily: 'Syne', fontSize: 18,color: Colors.grey),
              ),
              Text(
                "Google IT Support Professional Certificate",
                style: TextStyle(
                    fontFamily: 'Syne',
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'Coursera',
                style: TextStyle(
                    fontFamily: 'Syne',
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        const Divider(color: Colors.grey, height: 2),
        const Padding(
          padding: EdgeInsets.only(top: 25,bottom: 25),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '2024',
                style: TextStyle(fontFamily: 'Syne', fontSize: 18,color: Colors.grey),
              ),
              Text(
                "Introducation to MongoDB",
                style: TextStyle(
                    fontFamily: 'Syne',
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'MongoDB',
                style: TextStyle(
                    fontFamily: 'Syne',
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        const Divider(color: Colors.grey, height: 2),
        const Padding(
          padding: EdgeInsets.only(top: 25,bottom: 25),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                ' 2024',
                style: TextStyle(fontFamily: 'Syne', fontSize: 18,color: Colors.grey),
              ),
              Text(
                "Advance Python Programming and Applications",
                style: TextStyle(
                    fontFamily: 'Syne',
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'NAVTCC',
                style: TextStyle(
                    fontFamily: 'Syne',
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
