import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetController extends GetxController {
  final ScrollController scrollController = ScrollController();
  var activePage = 'HOME'.obs;

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(_onScroll);
  }

  @override
  void onClose() {
    scrollController.removeListener(_onScroll);
    scrollController.dispose();
    super.onClose();
  }

  void _onScroll() {
    double offset = scrollController.offset;
    if (offset >= 0 && offset < 800) {
      activePage.value = 'HOME';
    } else if (offset >= 800 && offset < 1600) {
      activePage.value = 'ABOUTME';
    } else if (offset >= 1600 && offset < 2400) {
      activePage.value = 'PORTFOLIO';
    } else if (offset >= 2400 && offset < 3200) {
      activePage.value = 'SERVICES';
    } else if (offset >= 3200) {
      activePage.value = 'CONTACT';
    }
  }

  void onPageSelected(String page) {
    activePage.value = page;
    switch (page) {
      case 'HOME':
        scrollController.animateTo(0,
            duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
        break;
      case 'ABOUTME':
        scrollController.animateTo(800,
            duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
        break;
      case 'PORTFOLIO':
        scrollController.animateTo(1600,
            duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
        break;
      case 'SERVICES':
        scrollController.animateTo(2400,
            duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
        break;
      case 'CONTACT':
        scrollController.animateTo(3200,
            duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
        break;
    }
  }
}
