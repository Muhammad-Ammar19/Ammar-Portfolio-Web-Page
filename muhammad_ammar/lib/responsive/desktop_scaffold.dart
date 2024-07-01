import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhammad_ammar/widgets/about_me_running.dart';
import 'package:muhammad_ammar/widgets/about_me_section.dart';
import 'package:muhammad_ammar/widgets/contact_form.dart';
import 'package:muhammad_ammar/widgets/education_running.dart';
import 'package:muhammad_ammar/widgets/education_section.dart';
import 'package:muhammad_ammar/widgets/footer.dart';
import 'package:muhammad_ammar/widgets/header.dart';
import 'package:muhammad_ammar/widgets/home_page.dart';
import 'package:muhammad_ammar/widgets/info.dart';
import 'package:muhammad_ammar/widgets/lets_talk_running.dart';
import 'package:muhammad_ammar/widgets/portfolio_running.dart';
import 'package:muhammad_ammar/widgets/portfolio_section.dart';
import 'package:muhammad_ammar/widgets/service_running.dart';
import 'package:muhammad_ammar/widgets/services_section.dart';
import 'package:muhammad_ammar/widgets/socials.dart';
import 'package:muhammad_ammar/controller/get_controller.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          GetBuilder<GetController>(
            init: GetController(),
            builder: (controller) {
              return SingleChildScrollView(
                controller: controller.scrollController,
                child: const Column(
                  children: [
                    Home(),
                    AboutMe(),
                    AboutMeSection(),
                    Education(),
                    EducationSection(),
                    PortfolioRunning(),
                    PortfolioSection(),
                    ServiceRunning(),
                    ServicesSection(),
                    LetsTalkRunning(),
                    ContactForm(),
                    Info(),
                    Socials(),
                    Footer(),
                  ],
                ),
              );
            },
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              child: GetBuilder<GetController>(
                builder: (controller) {
                  return Obx(()=>
                     Header(
                      activePage: controller.activePage.value,
                      onPageSelected: controller.onPageSelected,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

