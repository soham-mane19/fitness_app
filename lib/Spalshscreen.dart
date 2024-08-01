import 'dart:async';

import 'package:fitness_app/HomeScreen.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  double progressvalue = 0.0;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    starttimer();
  }

  void starttimer() {
    timer = Timer.periodic(const Duration(milliseconds: 30), (timer) {
      setState(() {
        if (progressvalue >= 1) {
          timer.cancel();
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return const HomeScreen();
            },
          ));
        } else {
          progressvalue += 0.01;
        }
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            SizedBox(
                width: double.infinity,
                child: Image.asset(
                  "assets/spalshscreen.png",
                  fit: BoxFit.cover,
                )),
            Positioned(
              top: 450,
              left: 0,
              right: 0,
              child: Container(
                height: 193,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromRGBO(255, 255, 255, 0),
                  Color.fromRGBO(255, 255, 255, 1)
                ])),
              ),
            ),
          ]),
          const SizedBox(
            height: 10,
          ),
          Stack(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: '      Wherever You Are\n',
                            style: GoogleFonts.lato(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                                color: const Color.fromRGBO(25, 33, 38, 1))),
                        TextSpan(
                            text: '                      Is Number One',
                            style: GoogleFonts.lato(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                                color: const Color.fromRGBO(25, 33, 38, 1))),
                      ]),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "There is no instant way to a healthy life",
                      style: GoogleFonts.lato(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(25, 33, 38, 0.5)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 10,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black)),
                      child: LinearProgressIndicator(
                          value: progressvalue,
                          backgroundColor: const Color.fromRGBO(25, 33, 38, 1),
                          valueColor: const AlwaysStoppedAnimation(
                              Color.fromRGBO(187, 242, 70, 1))),
                    ),
                  ],
                )
              ],
            ),
            Positioned(
                top: 40,
                left: 100,
                child: Container(
                  height: 20,
                  width: 70,
                  color: const Color.fromRGBO(187, 242, 70, 1),
                )),
            Positioned(
                top: 26,
                left: 95,
                child: Text("Health",
                    style: GoogleFonts.lato(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: const Color.fromRGBO(25, 33, 38, 1)))),
          ])
        ],
      ),
    );
  }
}
