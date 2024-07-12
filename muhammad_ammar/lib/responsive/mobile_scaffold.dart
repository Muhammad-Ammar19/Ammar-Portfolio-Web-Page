import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhammad_ammar/widgets/about_me_running.dart';
import 'package:muhammad_ammar/widgets/lets_talk_running.dart';
import 'package:muhammad_ammar/widgets/portfolio_running.dart';
import 'package:muhammad_ammar/widgets/service_running.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileScaffold extends StatelessWidget {
  MobileScaffold({super.key});
  final GlobalKey section1Key = GlobalKey();
  final GlobalKey section2Key = GlobalKey();
  final GlobalKey section3Key = GlobalKey();
  final GlobalKey section4Key = GlobalKey();
  final GlobalKey section5Key = GlobalKey();

  final ScrollController scrollController = ScrollController();

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(context,
          duration: const Duration(seconds: 1), curve: Curves.easeInOut);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Color(0xFFEA552B),
        ),
        elevation: 4,
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: const EdgeInsets.all(60),
          children: [
            ListTile(
              onTap: () {
                scrollToSection(section1Key);
              },
              title: const Text(
                "Home",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Sora',
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              onTap: () {
                scrollToSection(section5Key);
              },
              title: const Text(
                "Services",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Sora',
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              onTap: () {
                scrollToSection(section3Key);
              },
              title: const Text(
                "Porfolio",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Sora',
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              onTap: () {
                scrollToSection(section4Key);
              },
              title: const Text(
                "Contact",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Sora',
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              onTap: () {
                scrollToSection(section2Key);
              },
              title: const Text(
                "AboutMe",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Sora',
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              key: section1Key,
              height: Get.height * 0.9,
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
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Icon(
                            Icons.arrow_downward_rounded,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            scrollToSection(section2Key);
                          },
                          child: const Text(
                            "Scroll \nDown",
                            style: TextStyle(
                                fontFamily: 'Sora',
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Feel Free to send me a message \nif you want to improve your projects.",
                          style: TextStyle(
                              fontFamily: 'Sora',
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                const link =
                                    "https://pk.linkedin.com/in/muhammad-ammar-1b3980232";
                                launchUrl(Uri.parse(link),
                                    mode: LaunchMode.externalApplication);
                              },
                              child: const Text(
                                "Linkedin.",
                                style: TextStyle(
                                  fontFamily: 'Sora',
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Text(
                                ' Twitter.',
                                style: TextStyle(
                                  fontFamily: 'Sora',
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Text(
                                ' Github.',
                                style: TextStyle(
                                  fontFamily: 'Sora',
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const AboutMe(),
            Container(
              key: section2Key,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                    "https://petrix-react.vercel.app/images/golden_bg.jpg"),
                fit: BoxFit.cover,
              )),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
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
                    const SizedBox(height: 10),
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
                    const SizedBox(height: 15),
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
                              fontSize: 14,
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
                              fontSize: 14,
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
            SizedBox(
              width: double.infinity,
              height: Get.height * 0.15,
              child: const Center(
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
              height: Get.height * 1.7,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://petrix-react.vercel.app/_next/static/media/body_bg.255c616a.jpg"),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
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
            Container(
              key: section3Key,
              width: double.infinity,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            height: 60,
                            width: 60,
                            "assets/images/deeptune.png",
                            alignment: Alignment.topLeft,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            'Deeptune - Music Player',
                            style: TextStyle(
                              fontFamily: 'Sora',
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Deeptune is an elegant and intuitive player application developed with Flutter. Designed to deliver a smooth audio experience, Deeptune has a modern interface, strong performance and extensive customization options. Whether you're curating playlists, exploring new downloaded music, or enjoying your favorite tracks, Deeptune delivers high-quality, immersive listening.",
                      style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 2),
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image(
                            image: AssetImage(
                                "assets/images/5s_7_8_Preview_1-removebg-preview.png"),
                          ),
                        ),
                        Expanded(
                          child: Image(
                            image: AssetImage(
                                "assets/images/5s_7_8_Preview_2-removebg-preview.png"),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image(
                            image: AssetImage(
                                "assets/images/5s_7_8_Preview_3-removebg-preview.png"),
                          ),
                        ),
                        Expanded(
                          child: Image(
                            image: AssetImage(
                                "assets/images/5s_7_8_Preview_4-removebg-preview.png"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const ServiceRunning(),
            Container(
              key: section5Key,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://petrix-react.vercel.app/_next/static/media/body_bg.255c616a.jpg"),
                      fit: BoxFit.cover)),
              child: const Padding(
                padding: EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Text(
                      "I specialize in designing and developing custom web, mobile applications and desktop applications using Flutter for cross-platform compatibility. I provide robust backend solutions with easy API integration through Node.js, Python and Firebase. My services include performance optimization, security and scalability to provide you with high-quality software solutions that meet your needs.",
                      style: TextStyle(
                          height: 1.6,
                          fontFamily: 'Sora',
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    Divider(
                      color: Color.fromARGB(132, 158, 158, 158),
                      height: 80,
                    ),
                    Text(
                      "Front Development",
                      style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    Divider(
                      color: Color.fromARGB(132, 158, 158, 158),
                      height: 80,
                    ),
                    Text(
                      "Backend Development",
                      style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    Divider(
                      color: Color.fromARGB(132, 158, 158, 158),
                      height: 80,
                    ),
                    Text(
                      "Mobile Applications",
                      style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    Divider(
                      color: Color.fromARGB(132, 158, 158, 158),
                      height: 80,
                    ),
                    Text(
                      "RESTful APIs",
                      style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    Divider(
                      color: Color.fromARGB(132, 158, 158, 158),
                      height: 80,
                    ),
                    Text(
                      "Third-Party API Integration",
                      style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    Divider(
                      color: Color.fromARGB(132, 158, 158, 158),
                      height: 80,
                    ),
                    Text(
                      "UI/UX Design",
                      style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    Divider(
                      color: Color.fromARGB(132, 158, 158, 158),
                      height: 80,
                    ),
                  ],
                ),
              ),
            ),
            const LetsTalkRunning(),
            Container(
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
                          fontFamily: 'Sora',
                          fontSize: 22,
                          fontWeight: FontWeight.w800),
                    ),
                    const Text(
                      "Contact me!",
                      style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 22,
                          fontWeight: FontWeight.w800),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: ShadButton.outline(
                        height: Get.height * 0.070,
                        width: Get.width * 0.5,
                        decoration: ShadDecoration(
                            border:
                                ShadBorder(radius: BorderRadius.circular(12))),
                        text: const Text(
                          'Contact Form',
                          style: TextStyle(
                              fontFamily: 'Sora',
                              fontSize: 20,
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
                                          fontSize: 28),
                                    ),
                                    Text(
                                      "By all means, send me an email and get in touch.",
                                      style: TextStyle(
                                          fontFamily: 'Sora',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 28),
                                    )
                                  ],
                                ),
                                content: SizedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.all(50.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        ConstrainedBox(
                                          constraints: const BoxConstraints(
                                              maxWidth: 500),
                                          child: const ShadInput(
                                            placeholder: Text('Name'),
                                            keyboardType: TextInputType.name,
                                          ),
                                        ),
                                        const SizedBox(height: 12),
                                        ConstrainedBox(
                                          constraints: const BoxConstraints(
                                              maxWidth: 500),
                                          child: const ShadInput(
                                            placeholder: Text('Email'),
                                            keyboardType:
                                                TextInputType.emailAddress,
                                          ),
                                        ),
                                        const SizedBox(height: 12),
                                        ConstrainedBox(
                                          constraints: const BoxConstraints(
                                              maxWidth: 500),
                                          child: const ShadInput(
                                            autofocus: true,
                                            placeholder: Text('Message'),
                                            keyboardType:
                                                TextInputType.multiline,
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
              ),
            ),
            Container(
              color: Colors.deepOrange[500],
              width: double.infinity,
              height: Get.height * 0.075,
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "syedammarzaki4@gmail.com",
                      style: TextStyle(
                          fontFamily: 'Sora', fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "/",
                      style: TextStyle(
                          fontFamily: 'Sora', fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Quetta, Pakistan",
                      style: TextStyle(
                          fontFamily: 'Sora', fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: Get.height * 0.25,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://petrix-react.vercel.app/images/golden_bg.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            const link = "https://github.com/Muhammad-Ammar19";
                            launchUrl(Uri.parse(link),
                                mode: LaunchMode.externalApplication);
                          },
                          mouseCursor: SystemMouseCursors.click,
                          child: _buildSocialButton("My Github"),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            const link =
                                "https://www.instagram.com/syed_ammarxd?utm_source=qr&igsh=bXh3bmFiYzFkeTU1";
                            launchUrl(Uri.parse(link),
                                mode: LaunchMode.externalApplication);
                          },
                          mouseCursor: SystemMouseCursors.click,
                          child: _buildSocialButton("My Instagram"),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            const link =
                                "https://pk.linkedin.com/in/muhammad-ammar-1b3980232";
                            launchUrl(Uri.parse(link),
                                mode: LaunchMode.externalApplication);
                          },
                          mouseCursor: SystemMouseCursors.click,
                          child: _buildSocialButton("My Linkedin"),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            const link =
                                "https://x.com/i/flow/login?redirect_after_login=%2Fsyedammarzaki4";
                            launchUrl(Uri.parse(link),
                                mode: LaunchMode.externalApplication);
                          },
                          mouseCursor: SystemMouseCursors.click,
                          child: _buildSocialButton("My Twitter"),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: Colors.black,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Copyright © 2024 Ammar. All rights reserved.",
                    style: TextStyle(
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                        fontSize: 11),
                  ),
                  IconButton(
                    onPressed: () {
                      scrollToSection(section1Key);
                    },
                    icon: const Icon(Icons.arrow_upward_rounded),
                    hoverColor: Colors.black,
                    color: const Color(0xFFEA552B),
                    tooltip: "Scroll to top",
                    iconSize: 20,
                  )
                ],
              ),
            ),
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

Widget _buildSocialButton(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontFamily: 'Sora',
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    textAlign: TextAlign.center,
  );
}
