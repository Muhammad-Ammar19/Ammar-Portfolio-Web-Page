import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
              child: Text(
            'Do you have a question, an idea,\nor a project you need help with.',
            style: TextStyle(
                fontFamily: 'Sora', fontSize: 64, fontWeight: FontWeight.w800),
          )),
          const Text(
            "Contact me!",
            style: TextStyle(
                fontFamily: 'Sora', fontSize: 64, fontWeight: FontWeight.w800),
          ),
          Padding(
            padding: const EdgeInsets.only(top:12.0),
            child: ShadButton.outline(
              height: 80,
              width: 600,
              decoration: ShadDecoration(
                  border: ShadBorder(radius: BorderRadius.circular(12))),
              text: const Text(
                'Contact Form',
                style: TextStyle(
                    fontFamily: 'Sora',
                    fontSize: 18,
                    fontWeight: FontWeight.w800),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
