import 'package:fitness_app/Explore.dart';
import 'package:fitness_app/workout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 246, 250, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Good Morning 🔥",
                    style: GoogleFonts.lato(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(25, 33, 38, 1)),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Pramuditya Uzumaki",
                    style: GoogleFonts.lato(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: const Color.fromRGBO(25, 33, 38, 1)),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 48,
                width: double.infinity,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromRGBO(255, 255, 255, 1),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none),
                    hintText: 'Search',
                    hintStyle: GoogleFonts.lato(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(25, 33, 38, 0.5)),
                    prefixIcon: const Icon(Icons.search),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Popular Workouts",
                style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(25, 33, 38, 1)),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          return const Workout();
                        },));
                      },
                      child: Container(
                          height: 174,
                          width: 280,
                          child: Stack(children: [
                            Container(
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('assets/image1.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(23),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromRGBO(53, 53, 53, 1),
                                    Color.fromRGBO(75, 75, 75, 0),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(23),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: 'Lower Body\n',
                                              style: GoogleFonts.lato(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w700,
                                                  color: const Color.fromRGBO(
                                                      255, 255, 255, 1))),
                                          TextSpan(
                                              text: 'Training',
                                              style: GoogleFonts.lato(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w700,
                                                  color: const Color.fromRGBO(
                                                      255, 255, 255, 1))),
                                        ]),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                          height: 26,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(9),
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 0.8),
                                          ),
                                          child: Row(
                                            children: [
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const Icon(
                                                FontAwesomeIcons.fire,
                                                color:
                                                    Color.fromRGBO(25, 33, 38, 1),
                                                size: 18,
                                                weight: 1,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "500 Kcal",
                                                style: GoogleFonts.lato(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: const Color.fromRGBO(
                                                        25, 33, 38, 1)),
                                              ),
                                            ],
                                          )),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        height: 26,
                                        width: 72,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(9),
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 0.8),
                                        ),
                                        child: Row(
                                          children: [
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Icon(
                                              FontAwesomeIcons.clock,
                                              color:
                                                  Color.fromRGBO(25, 33, 38, 1),
                                              size: 18,
                                              weight: 1,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "50 Min",
                                              style: GoogleFonts.lato(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromRGBO(
                                                      25, 33, 38, 1)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          height: 38,
                                          width: 38,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color.fromRGBO(
                                                  187, 242, 70, 1)),
                                          child: const Icon(Icons.play_arrow))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ])),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 174,
                        width: 280,
                        child: Stack(children: [
                          Container(
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/handtraining.jpg',
                                    ),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(23)),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(colors: [
                                  Color.fromRGBO(53, 53, 53, 1),
                                  Color.fromRGBO(75, 75, 75, 0)
                                ]),
                                borderRadius: BorderRadius.circular(23)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: 'Hand\n',
                                            style: GoogleFonts.lato(
                                                fontSize: 24,
                                                fontWeight: FontWeight.w700,
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 1))),
                                        TextSpan(
                                            text: 'Training',
                                            style: GoogleFonts.lato(
                                                fontSize: 24,
                                                fontWeight: FontWeight.w700,
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 1))),
                                      ]),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                        height: 26,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(9),
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 0.8),
                                        ),
                                        child: Row(
                                          children: [
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Icon(
                                              FontAwesomeIcons.fire,
                                              color:
                                                  Color.fromRGBO(25, 33, 38, 1),
                                              size: 18,
                                              weight: 1,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "600 Kcal",
                                              style: GoogleFonts.lato(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromRGBO(
                                                      25, 33, 38, 1)),
                                            ),
                                          ],
                                        )),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      height: 26,
                                      width: 72,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(9),
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 0.8),
                                      ),
                                      child: Row(
                                        children: [
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Icon(
                                            FontAwesomeIcons.clock,
                                            color:
                                                Color.fromRGBO(25, 33, 38, 1),
                                            size: 18,
                                            weight: 1,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "40 Min",
                                            style: GoogleFonts.lato(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromRGBO(
                                                    25, 33, 38, 1)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: 38,
                                        width: 38,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color.fromRGBO(
                                                187, 242, 70, 1)),
                                        child: const Icon(Icons.play_arrow))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ])),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Today Plan",
                style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(25, 33, 38, 1)),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                        right: 20,
                        child: Container(
                          height: 19,
                          width: 81,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6),
                              ),
                              color: Color.fromRGBO(25, 33, 38, 1)),
                          child: Text(
                            "Intermediate",
                            style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(255, 255, 255, 1)),
                          ),
                        )),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.asset("assets/pushup.png"),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Push Up",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(25, 33, 38, 1)),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              "100 Push up a day",
                              style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(25, 33, 38, 0.5)),
                            ),
                            const SizedBox(
                              height: 7,
                            ),


                          
                         LinearPercentIndicator(
                          animation: true,
                          animationDuration: 1200,
                          center:  Text(
                    '45%',
                    style: GoogleFonts.poppins(
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(25, 33, 38, 1)),
                  ),
                          lineHeight: 16,
                          width: 209,
                          percent: 0.45,
                          progressColor:const  Color.fromRGBO(187, 242, 70, 1),
                          backgroundColor:const  Color.fromRGBO(242, 242, 242, 1),
                         )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                        right: 20,
                        child: Container(
                          height: 19,
                          width: 62,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6),
                              ),
                              color: Color.fromRGBO(25, 33, 38, 1)),
                          child: Text(
                            "Beginner",
                            style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(255, 255, 255, 1)),
                          ),
                        )),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.asset("assets/situp.png"),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Sit Up",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(25, 33, 38, 1)),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              "20 Sit up a day",
                              style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(25, 33, 38, 0.5)),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Container(
                              height: 16,
                              width: 209,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: const Color.fromRGBO(242, 242, 242, 1),
                              ),
                              child: Row(
                                children: [
                                   LinearPercentIndicator(
                          animation: true,
                          animationDuration: 1200,
                          center:  Text(
                    '75%',
                    style: GoogleFonts.poppins(
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(25, 33, 38, 1)),
                  ),
                          lineHeight: 16,
                          width: 209,
                          percent: 0.75,
                          progressColor:const  Color.fromRGBO(187, 242, 70, 1),
                          backgroundColor:const  Color.fromRGBO(242, 242, 242, 1),
                         )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                        right: 20,
                        child: Container(
                          height: 19,
                          width: 62,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6),
                              ),
                              color: Color.fromRGBO(25, 33, 38, 1)),
                          child: Text(
                            "Beginner",
                            style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(255, 255, 255, 1)),
                          ),
                        )),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.asset("assets/kneepushup.png"),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Knee Push Up",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(25, 33, 38, 1)),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              "20 Sit up a day",
                              style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(25, 33, 38, 0.5)),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            LinearPercentIndicator(
                          animation: true,
                          animationDuration: 1200,
                          center:  Text(
                    '85%',
                    style: GoogleFonts.poppins(
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(25, 33, 38, 1)),
                  ),
                          lineHeight: 16,
                          width: 209,
                          percent: 0.85,
                          progressColor:const  Color.fromRGBO(187, 242, 70, 1),
                          backgroundColor:const  Color.fromRGBO(242, 242, 242, 1),
                         )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
        child: Container(
          height: 70.0,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(25, 33, 38, 1),
            borderRadius: BorderRadius.circular(32),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              index == 0
                  ? Container(
                      height: 36,
                      width: 98,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(43),
                          color: const Color.fromRGBO(187, 242, 70, 1)),
                      child: Row(
                        children: [
                          const Icon(Icons.home),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Home",
                            style: GoogleFonts.lato(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(25, 33, 38, 1)),
                          ),
                        ],
                      ),
                    )
                  : IconButton(
                      icon: const Icon(Icons.home,color: Colors.white ),
                      onPressed: () {
                        setState(() {
                          index=0;
                        });
                      },
                    ),
              index == 1
                  ? Container(
                      height: 36,
                      width: 98,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(43),
                          color: const Color.fromRGBO(187, 242, 70, 1)),
                      child: Row(
                        children: [
                          const Icon(Icons.explore_outlined),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Explore",
                            style: GoogleFonts.lato(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(25, 33, 38, 1)),
                          ),
                        ],
                      ),
                    )
                  : IconButton(
                      icon: const Icon(Icons.explore_outlined, color: Colors.white),
                      onPressed: () {
                       
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                           return const  Explore();
                        },));
                      },
                    ),
              IconButton(
                icon: const Icon(Icons.camera, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.person, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      extendBodyBehindAppBar: true,
    );
  }
}
