import 'package:flutter/material.dart';

class FifthContainer extends StatelessWidget {
  const FifthContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(color: Colors.grey)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Front End Development',
                                          style: TextStyle(
                                              fontFamily: 'Syne',
                                              fontSize: 22,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                                          child: Row(
                                            children: [
                                              OutlinedButton(
                                                onPressed: () {},
                                                child: const Text(
                                                  'UI/UX Design',
                                                  style: TextStyle(
                                                      fontFamily: 'Syne',
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 8),
                                                child: OutlinedButton(
                                                    onPressed: () {},
                                                    child: const Text(
                                                        'Design to code',
                                                        style: TextStyle(
                                                            fontFamily: 'Syne',
                                                            fontSize: 11,
                                                            fontWeight:
                                                                FontWeight.w700))),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Text(
                                          'I work with Flutter and Figma',
                                          style: TextStyle(
                                              fontFamily: 'Syne',
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Image.network(
                                            "https://mixdesign.club/themeforest/braxton/img/services/1200x900_s01.webp"),
                                      ],
                                    ),
                                  ),
                                )],);
  }
}