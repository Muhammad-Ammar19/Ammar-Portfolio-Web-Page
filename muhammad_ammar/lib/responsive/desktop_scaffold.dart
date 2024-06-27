import 'package:flutter/material.dart';
import 'package:muhammad_ammar/widgets/about_me_running.dart';
import 'package:muhammad_ammar/widgets/contact_form.dart';
import 'package:muhammad_ammar/widgets/education_running.dart';
import 'package:muhammad_ammar/widgets/education_section.dart';
import 'package:muhammad_ammar/widgets/footer.dart';
import 'package:muhammad_ammar/widgets/header.dart';
import 'package:muhammad_ammar/widgets/info.dart';
import 'package:muhammad_ammar/widgets/lets_talk_running.dart';
import 'package:muhammad_ammar/widgets/portfolio_running.dart';
import 'package:muhammad_ammar/widgets/portfolio_section.dart';
import 'package:muhammad_ammar/widgets/service_running.dart';
import 'package:muhammad_ammar/widgets/services_section.dart';
import 'package:muhammad_ammar/widgets/socials.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  DesktopScaffoldState createState() {
    return DesktopScaffoldState();
  }
}

class DesktopScaffoldState extends State<DesktopScaffold> {
  final ScrollController _scrollController = ScrollController();
  String _activePage = 'HOME';

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    double offset = _scrollController.offset;
    setState(() {
      if (offset >= 0 && offset < 800) {
        _activePage = 'HOME';
      } else if (offset >= 800 && offset < 1600) {
        _activePage = 'ABOUTME';
      } else if (offset >= 1600 && offset < 2400) {
        _activePage = 'PORTFOLIO';
      } else if (offset >= 2400 && offset < 3200) {
        _activePage = 'SERVICES';
      } else if (offset >= 3200) {
        _activePage = 'CONTACT';
      }
    });
  }

  void _onPageSelected(String page) {
    setState(() {
      _activePage = page;
    });
    switch (page) {
      case 'HOME':
        _scrollController.animateTo(0,
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeIn);
        break;
      case 'ABOUTME':
        _scrollController.animateTo(800,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn);
        break;
      case 'PORTFOLIO':
        _scrollController.animateTo(1600,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn);
        break;
      case 'SERVICES':
        _scrollController.animateTo(2400,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn);
        break;
      case 'CONTACT':
        _scrollController.animateTo(3200,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Row(
                      children: [
                        Expanded(
                          child: Image.network(
                            "https://petrix-react.vercel.app/_next/static/media/body_bg.255c616a.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 150, right: 150),
                      child: Container(
                          color: const Color.fromARGB(88, 33, 149, 243),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 8,top: 100),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Hello, I’m Muhammad Ammar,\nFull Stack software developer based \nin Quetta, Pakistan.",
                                      style: TextStyle(
                                          fontFamily: 'Sora',
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: Colors.black)),
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
                                                fontSize: 16),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                const Text(
                                  "I LOVE SOFTWARES",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w900,
                                      fontSize: 130,
                                      color: Colors.black),
                                ),
                               const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [Padding(
                                        padding: EdgeInsets.all(15.0),
                                        child: Icon(
                                          Icons.arrow_downward_rounded,
                                          color: Colors.black,
                                          size: 30,
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
                                    Text(
                                      "Feel Free to send me a message \nif you want to enhance your recruitment.\nLinkedin. Twitter",
                                      style: TextStyle(
                                          fontFamily: 'Sora',
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ),
                  ]),
                ),
                const AboutMe(),
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://petrix-react.vercel.app/images/golden_bg.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Education(),
                const EducationSection(),
                const PortfolioRunning(),
                const PortfolioSection(),
                const ServiceRunning(),
                const ServicesSection(),
                const LetsTalkRunning(),
                const ContactForm(),
                const Info(),
                const Socials(),
                const Footer(),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              child: Header(
                activePage: _activePage,
                onPageSelected: _onPageSelected,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
