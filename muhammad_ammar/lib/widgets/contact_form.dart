import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: Get.height *0.7,
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
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Colors.black,
                      title: const Column(
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            'Contact Me',
                            style: TextStyle(
                                fontFamily: 'Sora',
                                fontWeight: FontWeight.w700,
                                fontSize: 45),
                          ),
                          Text(
                            "By all means, send me an email and get in touch.",
                            style: TextStyle(
                                fontFamily: 'Sora',
                                fontWeight: FontWeight.w700,
                                fontSize: 43),
                          )
                        ],
                      ),
                      content: SizedBox(
                        width: 800,
                        child: Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ConstrainedBox(
                                constraints:
                                    const BoxConstraints(maxWidth: 500),
                                child: const ShadInput(
                                  placeholder: Text('Name'),
                                  keyboardType: TextInputType.name,
                                ),
                              ),
                              const SizedBox(height: 12),
                              ConstrainedBox(
                                constraints:
                                    const BoxConstraints(maxWidth: 500),
                                child: const ShadInput(
                                  placeholder: Text('Email'),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                              ),
                              const SizedBox(height: 12),
                              ConstrainedBox(
                                constraints:
                                    const BoxConstraints(maxWidth: 500),
                                child: const ShadInput(
                                  autofocus: true,
                                  placeholder: Text('Message'),
                                  keyboardType: TextInputType.multiline,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      actions: [
                        ShadButton.outline(
                          text: const Text('Cancel'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        ShadButton(
                          text: const Text('Send'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
