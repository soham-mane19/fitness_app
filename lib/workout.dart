import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Workout extends StatelessWidget {
  const Workout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(25, 33, 38, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                 IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                   icon:const  Icon(Icons.arrow_back_ios,
                    size: 24,
                    color: Color.fromRGBO(255, 255, 255, 1),
                   )
                   ),
                  const SizedBox(
                    width: 120,
                  ),
                  Text(
                    'Workout',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset('assets/workoutmain.png'),
                  Positioned(
                      top: 120,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 132,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(29, 29, 29, 1),
                              Color.fromRGBO(104, 104, 104, 0)
                            ], begin: Alignment.bottomRight),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(23),
                                bottomRight: Radius.circular(23))),
                      )),
                  Positioned(
                    top: 220,
                    left: 40,
                    child: Container(
                      padding: EdgeInsets.only(
                          bottom: 12, left: 15, top: 15, right: 15),
                      height: 64,
                      width: 258,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromRGBO(25, 33, 38, 0.3),
                          border: Border.all(
                              color: const Color.fromRGBO(187, 242, 70, 0.5),
                              width: 0.4)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromRGBO(187, 242, 70, 1),
                            ),
                            child: const Icon(
                              FontAwesomeIcons.clock,
                              color: Color.fromRGBO(25, 29, 26, 1),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Time',
                                style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1)),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                '20 min',
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(187, 242, 70, 1)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            height: 38,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: const Color.fromRGBO(
                                        255, 255, 255, 0.25))),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromRGBO(187, 242, 70, 1),
                            ),
                            child: const Icon(
                              FontAwesomeIcons.fire,
                              size: 18,
                              color: Color.fromRGBO(25, 29, 26, 1),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Burn',
                                style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1)),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                '95 kcal',
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(187, 242, 70, 1)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              Text(
                'Lower Body Training',
                style: GoogleFonts.lato(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    color: const Color.fromRGBO(255, 255, 255, 1)),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'The lower abdomen and hips are the most difficult areas of the body to reduce when we are on a diet. Even so, in this area, especially the legs as a whole, you can reduce weight even if you dont use tools',
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(255, 255, 255, 0.5)),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    'Rounds',
                    style: GoogleFonts.lato(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                  const Spacer(),
                  Text(
                    '1/8',
                    style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                height: 74,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(56, 64, 70, 1)),
                child: Row(
                  children: [
                    Image.asset('assets/jumping.png'),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jumping Jacks',
                          style: GoogleFonts.lato(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(255, 255, 255, 1)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '00:30',
                          style: GoogleFonts.lato(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(255, 255, 255, 0.5)),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 28,
                      width: 28,
                      decoration:const  BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(25, 33, 38, 1)
                      ),
                      child: const  Icon(Icons.play_arrow,color: Color.fromRGBO(187, 242, 70, 1),),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                height: 74,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(56, 64, 70, 1)),
                child: Row(
                  children: [
                    Image.asset('assets/squates.png'),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Squats',
                          style: GoogleFonts.lato(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(255, 255, 255, 1)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '00:30',
                          style: GoogleFonts.lato(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(255, 255, 255, 0.5)),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 28,
                      width: 28,
                      decoration:const  BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(25, 33, 38, 1)
                      ),
                      child: const  Icon(Icons.play_arrow,color: Color.fromRGBO(187, 242, 70, 1),),
                    )
                  ],
                ),
              ),
                const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                height: 74,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(56, 64, 70, 1)),
                child: Row(
                  children: [
                    Image.asset('assets/back.png'),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Backward Lunge',
                          style: GoogleFonts.lato(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(255, 255, 255, 1)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '00:30',
                          style: GoogleFonts.lato(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(255, 255, 255, 0.5)),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 28,
                      width: 28,
                      decoration:const  BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(25, 33, 38, 1)
                      ),
                      child: const  Icon(Icons.play_arrow,color: Color.fromRGBO(187, 242, 70, 1),),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
       floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
          height: 70.0,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(187, 242, 70, 1),
            borderRadius: BorderRadius.circular(32),
          ),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text(
                    'Lets Workout',
                    style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(25, 33, 38, 1)),
                  ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    
    );
  }
}
