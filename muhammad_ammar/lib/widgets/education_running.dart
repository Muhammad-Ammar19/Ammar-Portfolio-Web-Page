import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(183, 0, 0, 0),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.20,
      child: const Center(
        child: Text(
          "I craft wonderful digital \nexperiences for brands",
          style: TextStyle(
              fontFamily: 'Sora', fontWeight: FontWeight.w700, fontSize: 55),
        ),
      ),
    );
  }
}
