import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  final GlobalKey section4Key;

  const ContactSection({required this.section4Key, super.key});

  Future<void> _launchEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'syedammarzaki4@gmail.com', 
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
    return Container(
      key: section4Key,
      width: double.infinity,
      height: Get.height * 0.40,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Do you have a question, an idea, or a project you need help with.',
              style: TextStyle(
                  fontFamily: 'Sora', fontSize: 22, fontWeight: FontWeight.w800),
            ),
            const Text(
              "Contact me!",
              style: TextStyle(
                  fontFamily: 'Sora', fontSize: 22, fontWeight: FontWeight.w800),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: ShadButton.outline(
                height: Get.height * 0.070,
                width: Get.width * 0.5,
                decoration: ShadDecoration(
                    border: ShadBorder(radius: BorderRadius.circular(12))),
                text: const Text(
                  'Contact Form',
                  style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
                onPressed: _launchEmail,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
