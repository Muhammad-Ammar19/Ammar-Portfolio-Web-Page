import 'package:flutter/material.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
       
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.85,
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
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(height: MediaQuery.of(context).size.height * 0.47, 
                      width: MediaQuery.of(context).size.width * 0.45,
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
                    const SizedBox(width: 20),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
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
                            _buildEducationRow(
                              context,
                              '2024',
                              "IT Support Professional Certificate",
                              'Google',
                            ),
                            _buildEducationRow(
                              context,
                              '2023',
                              "Crash Course on Python",
                              'Google',
                            ),
                            const SizedBox(height: 10),
                            _buildEducationRow(
                              context,
                              '2023',
                              "Software Engineering Essentials",
                              'IBM',
                            ),
                            const SizedBox(height: 10),
                            _buildEducationRow(
                              context,
                              '2023',
                              "Foundations of User Experience Design",
                              'Google',
                            ),
                            const SizedBox(height: 10),
                            _buildEducationRow(
                              context,
                              '2023',
                              "Decentralized Applications",
                              'University at buffalo | Coursera',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
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
                        _buildEducationRow(
                          context,
                          '2023',
                          "AI Essentials",
                          'Intel',
                        ),
                        const SizedBox(height: 10),
                        _buildEducationRow(
                          context,
                          '2023',
                          "Advanced Python Programming & Applications",
                          'NAVTTC',
                        ),
                        const SizedBox(height: 10),
                        _buildEducationRow(
                          context,
                          '2023',
                          "Smart Contracts",
                          'University at Buffalo | Coursera',
                        ),
                      ],
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

  Widget _buildEducationRow(BuildContext context, String date, String title, String institution) {
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
