import 'package:flutter/material.dart';
import 'package:muhammad_ammar/widgets/about_me_running.dart';
import 'package:muhammad_ammar/widgets/portfolio_running.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
      ),
      endDrawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 800,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://petrix-react.vercel.app/_next/static/media/body_bg.255c616a.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Flexible(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Hello, I’m Muhammad Ammar,\nFull Stack software developer based \nin Quetta, Pakistan.",
                        style: TextStyle(
                          fontFamily: 'Sora',
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black)),
                            child: const Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Icon(
                                Icons.play_arrow_rounded,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Work \nProcess",
                              style: TextStyle(
                                  fontFamily: 'Sora',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        "I LOVE SOFTWARES",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w900,
                            fontSize: 56,
                            color: Colors.black),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Icon(
                              Icons.arrow_downward_rounded,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                          Text(
                            "Scroll \nDown",
                            style: TextStyle(
                                fontFamily: 'Sora',
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                        ],
                      ),
                      const Text(
                        "Feel Free to send me a message \nif you want to improve your projects.",
                        style: TextStyle(
                            fontFamily: 'Sora',
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const AboutMe(),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                    "https://petrix-react.vercel.app/images/golden_bg.jpg"),
                fit: BoxFit.cover,
              )),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Image(
                      image: AssetImage(
                        "assets/images/ammarbg.png",
                      ),
                      height: 700,
                      width: double.infinity,
                    ),
                    Image.network(
                        "https://petrix-react.vercel.app/_next/static/media/about_shapes.df78a495.png"),
                    const SizedBox(height: 20),
                    const Text(
                      "Hello! I am Muhammad Ammar, Full Stack Flutter Developer from Quetta. I have extensive experience in both app and web development and specialize in creating smooth and responsive applications. I am also familiar with web technologies. I enjoy discussing and working on unique projects that bring innovative solutions to life.",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.w600,
                        height: 1.6,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      children: [
                        Text(
                          "1.5+",
                          style: TextStyle(
                            fontSize: 34,
                            color: Colors.black,
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Years Of \nExperience",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontFamily: 'Sora',
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "12+",
                          style: TextStyle(
                            fontSize: 34,
                            color: Colors.black,
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Successful \nProjects",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontFamily: 'Sora',
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ShadButton(
                      decoration: const ShadDecoration(
                          border: ShadBorder(
                              radius: BorderRadius.all(Radius.circular(8)))),
                      hoverBackgroundColor: const Color(0xFFEA552B),
                      cursor: SystemMouseCursors.click,
                      pressedBackgroundColor: const Color(0xFFEA552B),
                      backgroundColor: Colors.black,
                      height: 50,
                      width: 160,
                      text: const Center(
                        child: Text(
                          "DOWNLOAD CV",
                          style: TextStyle(
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      onPressed: () {
                        const link =
                            "https://drive.google.com/file/d/1K_X5jKgZrBrrjZoopGW7HNTek7ETqtqf/view";
                        launchUrl(Uri.parse(link),
                            mode: LaunchMode.externalApplication);
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: double.infinity,
              height: 120,
              child: Center(
                child: Text(
                  "I craft wonderful digital \nexperiences for brands.",
                  style: TextStyle(
                      fontFamily: 'Sora',
                      fontWeight: FontWeight.w700,
                      fontSize: 26),
                ),
              ),
            ),
            Container(
              height: 1100,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://petrix-react.vercel.app/_next/static/media/body_bg.255c616a.jpg"),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
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
                    Container(
                      width: double.infinity,
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
                    Container(
                      width: double.infinity,
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
         
         const PortfolioRunning(),
       
         
         
         
          ],
        ),
      ),
    );
  }
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
