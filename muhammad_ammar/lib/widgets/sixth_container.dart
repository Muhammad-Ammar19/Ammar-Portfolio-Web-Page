import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

class SixthContainer extends StatelessWidget {
  const SixthContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
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
                                          'App Development ',
                                          style: TextStyle(
                                              fontFamily: 'Syne',
                                              fontSize: 22,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Row(
                                          children: [
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  SimpleIcons.android),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: IconButton(
                                                onPressed: () {},
                                                icon:
                                                    const Icon(SimpleIcons.ios),
                                              ),
                                            )
                                          ],
                                        ),
                                        const Text(
                                          'Highly Scalable and Visually appealing apps using Flutter and dart,',
                                          style: TextStyle(
                                              fontFamily: 'Syne',
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Image.network(
                                            'https://mixdesign.club/themeforest/braxton/img/services/1200x900_s03.webp'),
                                      ],
                                    ),
                                  ),
                                );
  }
}