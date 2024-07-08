import 'package:flutter/material.dart';


class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: 900,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'Do you have a question, an idea,\nor a project you need help with.',
            style: TextStyle(
                fontFamily: 'Sora', fontSize: 53, fontWeight: FontWeight.w800),
          )),
          Text(
            "Contact me!",
            style: TextStyle(
                fontFamily: 'Sora', fontSize: 53, fontWeight: FontWeight.w800),
          ),
        
        ],
      ),
    );
  }
}
