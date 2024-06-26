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

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 1,                                                            // First Container
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://petrix-react.vercel.app/_next/static/media/body_bg.255c616a.jpg"),
                  fit: BoxFit.cover,
                ),
              ),

              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [Header()],
                  )
                ],
              ),
            ),

            const AboutMe(),                                                                                            // About Me running

            Container(
              height: MediaQuery.of(context).size.height * 1, // First Container
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
    );
  }
}
