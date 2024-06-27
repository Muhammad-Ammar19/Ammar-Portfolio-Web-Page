import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 18),
        child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.white,),
          height: MediaQuery.of(context).size.height * 0.061,
          width: MediaQuery.of(context).size.width * 0.63,
         
          child: Padding(
            padding: const EdgeInsets.only(left: 5,right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("ryze.",style: TextStyle(color: Colors.black),),
                const Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text(
                          'HOME',
                          style: TextStyle(
                              fontFamily: 'Sora', fontWeight: FontWeight.w600,fontSize: 12,color: Colors.black87),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text(
                          'ABOUTME',
                          style: TextStyle(fontSize: 13,
                              fontFamily: 'Sora', fontWeight: FontWeight.w600,color: Colors.black87),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text(
                          'PORTFOLIO',
                          style: TextStyle(
                              fontFamily: 'Sora', fontWeight: FontWeight.w600,fontSize: 12,color: Colors.black87),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text(
                          'SERVICES',
                          style: TextStyle(
                              fontFamily: 'Sora', fontWeight: FontWeight.w600,fontSize: 12,color: Colors.black87),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text(
                          'CONTACT',
                          style: TextStyle(
                              fontFamily: 'Sora', fontWeight: FontWeight.w600,fontSize: 12,color: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                ),
                ShadButton(hoverBackgroundColor: Colors.orangeAccent[900],
                  backgroundColor: Colors.black,
                  width: 120,
                  text: const Text(
                    "Let's Talk",
                    style: TextStyle(
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 12),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
