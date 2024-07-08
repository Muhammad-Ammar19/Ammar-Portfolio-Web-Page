import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: 900,
      child: Column(
        children: [
          Center(
              child: Text(
            'Do you have a question, an idea,\nor a project you need help with?\nContact us!',
            style: TextStyle(
                fontFamily: 'Sora', fontSize: 53, fontWeight: FontWeight.w800),
          )),
        ],
      ),
    );
  }
}
