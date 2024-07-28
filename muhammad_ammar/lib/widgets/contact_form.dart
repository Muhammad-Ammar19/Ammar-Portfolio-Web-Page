import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  Future<void> _launchEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'syedammarzaki4@gmail.com', // Replace with your email address
      query: 'subject=Contact&body=Hello, I would like to get in touch with you.',
    );

    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    } else {
      throw 'Could not launch $emailLaunchUri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: Get.height * 0.7,
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
            padding: const EdgeInsets.only(top: 12.0),
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
              onPressed: _launchEmail,
            ),
          ),
        ],
      ),
    );
  }
}

