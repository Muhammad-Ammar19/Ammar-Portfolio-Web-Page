import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PortfolioRunning extends StatefulWidget {
  const PortfolioRunning({super.key});

  @override
  PortfolioRunningState createState() => PortfolioRunningState();
}

class PortfolioRunningState extends State<PortfolioRunning> with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 100),
    );

    _animationController.addListener(() {
      _scrollController.jumpTo(_animationController.value * _scrollController.position.maxScrollExtent);
    });

    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFEA552B),
      width: double.infinity,
      height: Get.height *0.18,
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          controller: _scrollController,
          child: Row(
            children: List.generate(10, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    
                    const Text(
                      "PORTFOLIO",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 80,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 40), 
                   
                    Stack(
                      children: [
                        Text(
                          "PORTFOLIO",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            fontSize: 80,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 0.8
                              ..color = Colors.white, // Stroke color
                          ),
                        ),
                        const Text(
                          "PORTFOLIO",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            fontSize: 80,
                            color: Colors.transparent, // Transparent fill color
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
