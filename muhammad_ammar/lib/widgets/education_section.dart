import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: Get.height * 0.75,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://petrix-react.vercel.app/_next/static/media/body_bg.255c616a.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 100.0, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 420,
                    width: 500,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white60,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton.icon(
                            onPressed: () {},
                            label: const Text(
                              "My Education",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Sora',
                                fontWeight: FontWeight.w600,
                                fontSize: 25,
                              ),
                            ),
                            icon: const Icon(
                              Icons.school,
                              size: 35,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 20),
                          _buildEducationRow(
                            context,
                            '2018 - 2024',
                            "Bachelor's in Computer Science",
                            'Alhamd Islamic University',
                          ),
                          const SizedBox(height: 10),
                          _buildEducationRow(
                            context,
                            '2018 - 2020',
                            "Fsc Pre - Engineering",
                            'Govt Boys Inter College',
                          ),
                          const SizedBox(height: 10),
                          _buildEducationRow(
                            context,
                            '2006 - 2018',
                            "Matriculation",
                            'OPF Public School',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    width: 500,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white60,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton.icon(
                            onPressed: () {},
                            label: const Text(
                              "Certifications",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Sora',
                                fontWeight: FontWeight.w600,
                                fontSize: 25,
                              ),
                            ),
                            icon: const Icon(
                              Icons.book,
                              size: 35,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 20),
                          InkWell(
                              onTap: () {
                                const link =
                                    "https://drive.google.com/file/d/18d86qhkX8csGa7KcCPlAnWifVECGqtvf/view?usp=drive_link";
                                launchUrl(Uri.parse(link),
                                    mode: LaunchMode.externalApplication);
                              },
                              child: _buildEducationRow(
                                context,
                                '2024',
                                "Foundations: Data, Data, Everywhere",
                                'Google',
                              ),
                            ),
                          InkWell(
                            onTap: () {
                              const link =
                                  "https://drive.google.com/file/d/1yyaumBhDn1xkEuSxh68IKHUiFphxs5-i/view?usp=drive_link";
                              launchUrl(Uri.parse(link),
                                  mode: LaunchMode.externalApplication);
                            },
                            child: _buildEducationRow(
                              context,
                              '2024',
                              "Google IT Support Professional Certificate",
                              'Google',
                            ),
                          ), const SizedBox(height: 10),
                          InkWell(
                            onTap: () {
                              const link =
                                  "https://drive.google.com/file/d/1aTXdhX9kyNCMmZpemWsFbRgjSkyN33Dz/view?usp=drive_link";
                              launchUrl(Uri.parse(link),
                                  mode: LaunchMode.externalApplication);
                            },
                            child: _buildEducationRow(
                              context,
                              '2023',
                              "Crash Course on Python",
                              'Google',
                            ),
                          ),
                          const SizedBox(height: 10),
                          InkWell(
                            onTap: () {
                              const link =
                                  "https://drive.google.com/file/d/127zoeusEM4FUypl14tlArhH6tmNPO1ff/view?usp=drive_link";
                              launchUrl(Uri.parse(link),
                                  mode: LaunchMode.externalApplication);
                            },
                            child: _buildEducationRow(
                              context,
                              '2023',
                              "Software Engineering",
                              'IBM',
                            ),
                          ),
                          const SizedBox(height: 10),
                          InkWell(
                            onTap: () {
                              const link =
                                  "https://drive.google.com/file/d/1BkcngsSYlc6NBSwcMPhuTDZpBbXRjc78/view?usp=drive_link";
                              launchUrl(Uri.parse(link),
                                  mode: LaunchMode.externalApplication);
                            },
                            child: _buildEducationRow(
                              context,
                              '2023',
                              "Foundations of User Experience Design",
                              'Google',
                            ),
                          ),
                         
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                   
                    width: 500,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white60,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              const link =
                                  "https://drive.google.com/file/d/1cq2FZbyBtpbxuQv7tep21Ac6NsOA3E6t/view?usp=drive_link";
                              launchUrl(Uri.parse(link),
                                  mode: LaunchMode.externalApplication);
                            },
                            child: _buildEducationRow(
                              context,
                              '2023',
                              "AI Essentials",
                              'Intel',
                            ),
                          ),
                          const SizedBox(height: 10),
                          InkWell(
                            onTap: () {
                              const link =
                                  "https://drive.google.com/file/d/1hzZqISeYax7caULr6ySPrEHH54tPKs5s/view?usp=drive_link";
                              launchUrl(Uri.parse(link),
                                  mode: LaunchMode.externalApplication);
                            },
                            child: _buildEducationRow(
                              context,
                              '2023',
                              "Advanced Python Programming & Applications",
                              'NAVTTC',
                            ),
                          ),
                          const SizedBox(height: 10),
                          InkWell(
                            onTap: () {
                              const link =
                                  "https://drive.google.com/file/d/1TW48uEpiqAIzp_u-BaXitpyxusCAun-1/view?usp=drive_link";
                              launchUrl(Uri.parse(link),
                                  mode: LaunchMode.externalApplication);
                            },
                            child: _buildEducationRow(
                              context,
                              '2023',
                              "Smart Contracts",
                              'University at Buffalo | Coursera',
                            ),
                          ),
                          const SizedBox(height: 10),
                          InkWell(
                            onTap: () {
                              const link =
                                  "https://drive.google.com/file/d/1i9b2XTwiV-jidjO0_8wbpJKE7UWNeJJf/view?usp=drive_link";
                              launchUrl(Uri.parse(link),
                                  mode: LaunchMode.externalApplication);
                            },
                            child: _buildEducationRow(
                              context,
                              '2023',
                              "Introduction to SQL",
                              'University of Michigan',
                            ),
                          ), const SizedBox(height: 10),
                          InkWell(
                            onTap: () {
                              const link =
                                  "https://drive.google.com/file/d/1zs_AHk__6Z56xEYENQ0_Gj4kwPs8jN8K/view?usp=drive_link";
                              launchUrl(Uri.parse(link),
                                  mode: LaunchMode.externalApplication);
                            },
                            child: _buildEducationRow(
                              context,
                              '2023',
                              "Introduction to MongoDB",
                              'Coursera',
                            ),
                          ), const SizedBox(height: 10),
                          InkWell(
                            onTap: () {
                              const link =
                                  "https://drive.google.com/file/d/17FKaIB2Go8CtoUNYQ2F_xZHWNK-mSVLH/view?usp=drive_link";
                              launchUrl(Uri.parse(link),
                                  mode: LaunchMode.externalApplication);
                            },
                            child: _buildEducationRow(
                              context,
                              '2023',
                              "Blockchain",
                              'University at buffalo | Coursera',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildEducationRow(
      BuildContext context, String date, String title, String institution) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: const TextStyle(
              fontFamily: 'Sora',
              fontSize: 15,
              color: Color(0xFFEA552B),
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'Sora',
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  institution,
                  style: const TextStyle(
                    fontFamily: 'Sora',
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
