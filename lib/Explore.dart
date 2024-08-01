
import 'package:fitness_app/Activity.dart';
import 'package:fitness_app/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  int index = 1;
  List<Map<String, String>> bestlist = [
    {
      'image': 'assets/bellyfat.png',
      'name': 'Belly fat burner',
      'time': '10 min',
      'state': 'Beginner'
    },
    {
      'image': 'assets/loosefat.png',
      'name': 'Lose Fat',
      'time': '10 min',
      'state': 'Beginner'
    },
    {
      'image': 'assets/plank.png',
      'name': 'Plank',
      'time': '5 min',
      'state': 'Expert'
    },
    {
      'image': 'assets/build.png',
      'name': 'Build Whider Biceps',
      'time': '30 min',
      'state': 'Intermediate'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60,
          left: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                height: 180,
                width: double.infinity,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(23)),
                child: Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/explore.png'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color.fromRGBO(60, 60, 60, 1),
                            Color.fromRGBO(0, 0, 0, 0),
                          ]),
                          borderRadius: BorderRadius.circular(23)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20, left: 20, right: 20, bottom: 37),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: 'Best Quarantine\n',
                                style: GoogleFonts.lato(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: const Color.fromRGBO(
                                        255, 255, 255, 1))),
                            TextSpan(
                                text: 'Workout',
                                style: GoogleFonts.lato(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1)))
                          ])),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: 'See more',
                                  style: GoogleFonts.lato(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: const Color.fromRGBO(
                                          187, 242, 70, 1))),
                              TextSpan(
                                  text: '  >',
                                  style: GoogleFonts.lato(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: const Color.fromRGBO(
                                          187, 242, 70, 1)))
                            ])),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Best for you",
              style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(25, 33, 38, 1)),
            ),
           
            SizedBox(
              height: 200,
              child: GridView.builder(
                itemCount: bestlist.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 2.1),
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.only(
                        left: 2, right: 2, top: 6, bottom: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(9),
                            child: Image.asset(
                              bestlist[index]['image']!,
                              fit: BoxFit.cover,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Belly fat burner",
                              style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(25, 33, 38, 1)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 18,
                              width: 49,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color:
                                      const Color.fromRGBO(241, 241, 241, 1)),
                              child: Text(
                                bestlist[index]['time']!,
                                style: GoogleFonts.lato(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(25, 33, 38, 0.7)),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 20,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color:
                                      const Color.fromRGBO(241, 241, 241, 1)),
                              child: Text(
                                bestlist[index]['state']!,
                                style: GoogleFonts.lato(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(25, 33, 38, 0.7)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Challenge',
              style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(25, 29, 26, 1)),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: const Color.fromRGBO(187, 242, 70, 1)),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 28,
                          right: 5,
                          child: SvgPicture.asset(
                            'assets/firesvg.svg',
                            color: const Color.fromRGBO(255, 255, 255, 0.6),
                            height: 65,
                          ),
                        ),
                        Positioned(
                          top: 66,
                          right: 22,
                          child: SvgPicture.asset(
                            'assets/firesvg2.svg',
                            color: const Color.fromRGBO(255, 255, 255, 0.6),
                            height: 27,
                          ),
                        ),
                        Positioned(
                            top: 50,
                            left: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Plank',
                                  style: GoogleFonts.lato(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          const Color.fromRGBO(25, 33, 38, 1)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Challenge',
                                  style: GoogleFonts.lato(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          const Color.fromRGBO(25, 33, 38, 1)),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: const Color.fromRGBO(25, 33, 38, 1)),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 38,
                          right: 5,
                          child: SvgPicture.asset(
                            'assets/sprintsvg.svg',
                            color: const Color.fromRGBO(255, 255, 255, 0.6),
                            height: 48,
                          ),
                        ),
                        Positioned(
                            top: 50,
                            left: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sprint',
                                  style: GoogleFonts.lato(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 1)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Challenge',
                                  style: GoogleFonts.lato(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 1)),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 38,
                          right: 5,
                          child: SvgPicture.asset(
                            'assets/squatsvg.svg',
                            color: const Color.fromRGBO(187, 242, 70, 0.5),
                            height: 60,
                          ),
                        ),
                        Positioned(
                            top: 50,
                            left: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Squat',
                                  style: GoogleFonts.lato(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color:
                                          const Color.fromRGBO(25, 33, 38, 1)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Challenge',
                                  style: GoogleFonts.lato(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color:
                                          const Color.fromRGBO(25, 33, 38, 1)),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Fast Warmup',
              style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(25, 29, 26, 1)),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  height: 80,
                  width: 190,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: const Color.fromRGBO(255, 255, 255, 1)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/leg.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Leg excercises',
                            style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(25, 33, 38, 1)),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Container(
                            height: 18,
                            width: 49,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: const Color.fromRGBO(241, 241, 241, 1)),
                            child: Text(
                              '10 min',
                              style: GoogleFonts.lato(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(25, 33, 38, 0.7)),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            height: 18,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: const Color.fromRGBO(241, 241, 241, 1)),
                            child: Text(
                              'Beginner',
                              style: GoogleFonts.lato(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(25, 33, 38, 0.7)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 80,
                  width: 190,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: const Color.fromRGBO(255, 255, 255, 1)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/backward.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Backward lunges',
                            style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(25, 33, 38, 1)),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Container(
                            height: 18,
                            width: 49,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: const Color.fromRGBO(241, 241, 241, 1)),
                            child: Text(
                              '5 min',
                              style: GoogleFonts.lato(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(25, 33, 38, 0.7)),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            height: 18,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: const Color.fromRGBO(241, 241, 241, 1)),
                            child: Text(
                              'Beginner',
                              style: GoogleFonts.lato(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(25, 33, 38, 0.7)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
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
                      icon: const Icon(Icons.home, color: Colors.white),
                      onPressed: () {
                       
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return  const HomeScreen();
                          },));
                        
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
                      icon: const Icon(Icons.explore_outlined,
                          color: Colors.white),
                      onPressed: () {
                        setState(() {
                          index = 1;
                        });
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const Explore();
                          },
                        ));
                      },
                    ),
                     index == 2
                  ? Container(
                      height: 36,
                      width: 105,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(43),
                          color: const Color.fromRGBO(187, 242, 70, 1)),
                      child: Row(
                        children: [
                          const Icon(Icons.analytics_outlined ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Analytics",
                            style: GoogleFonts.lato(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(25, 33, 38, 1)),
                          ),
                        ],
                      ),
                    )
                  : 
              IconButton(
                icon: const Icon(Icons. analytics_outlined , color: Colors.white),
                onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return const Activity();
                }));
                },
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
    
    );
  }
}
