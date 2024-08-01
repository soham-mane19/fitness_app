import 'package:fitness_app/Explore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  int dateindex = 2;
  int index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 45),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("July 2022",
                    style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(25, 33, 38, 1))),
                const SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      calender(0, 'S', 10),
                      const SizedBox(
                        width: 10,
                      ),
                      calender(1, 'M', 11),
                      const SizedBox(
                        width: 10,
                      ),
                      calender(2, 'T', 12),
                      const SizedBox(
                        width: 10,
                      ),
                      calender(3, 'W', 13),
                      const SizedBox(
                        width: 10,
                      ),
                      calender(4, 'T', 14),
                      const SizedBox(
                        width: 10,
                      ),
                      calender(5, 'F', 15),
                      const SizedBox(
                        width: 10,
                      ),
                      calender(6, 'S', 16),
                      const SizedBox(
                        width: 10,
                      ),
                      calender(7, 'S', 17),
                      const SizedBox(
                        width: 10,
                      ),
                      calender(8, 'M', 18),
                      const SizedBox(
                        width: 10,
                      ),
                      calender(9, 'T', 19),
                    ],
                  ),
                )
              ]),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Today Report',
                    style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(25, 33, 38, 1)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            height: 70,
                            width: 112,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  color: const Color.fromRGBO(25, 33, 38, 0.1),
                                  width: 1),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Active calories',
                                  style: GoogleFonts.lato(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color:
                                          const Color.fromRGBO(25, 33, 38, 0.7)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '645 Cal',
                                  style: GoogleFonts.lato(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: const Color.fromRGBO(25, 33, 38, 1)),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            height: 132,
                            width: 112,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color.fromRGBO(234, 236, 255, 1)),
                            child: Column(
                              children: [
                                Text(
                                  'Training time',
                                  style: GoogleFonts.lato(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(25, 33, 38, 1)),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                CircularPercentIndicator(
                                  radius: 37,
                                  animation: true,
                                  animationDuration: 1200,
                                  backgroundColor:
                                      const Color.fromRGBO(255, 255, 255, 1),
                                  lineWidth: 10,
                                  percent: 0.8,
                                  startAngle: 90,
                                  center: Text(
                                    "80%",
                                    style: GoogleFonts.lato(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            const Color.fromRGBO(25, 33, 38, 1)),
                                  ),
                                  progressColor:
                                      const Color.fromRGBO(164, 138, 237, 1),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 218,
                        width: 222,
                        padding:
                            const EdgeInsets.only(top: 20, right: 10, left: 10),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(25, 33, 38, 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Stack(children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      height: 28,
                                      width: 28,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(3),
                                          color: const Color.fromRGBO(
                                              250, 251, 249, 1)),
                                      child: const Icon(Icons.directions_bike)),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Cycling",
                                    style: GoogleFonts.lato(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: const Color.fromRGBO(
                                            250, 251, 249, 1)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Image.asset('assets/finalmap.png')
                            ],
                          ),
                        ]),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 10, left: 10, right: 10),
                        height: 167,
                        width: 199,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromRGBO(255, 235, 235, 1)),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 28,
                                    width: 28,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color:
                                          const Color.fromRGBO(249, 185, 185, 1),
                                    ),
                                    child: Image.asset('assets/heart.png')),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Hearth Rate",
                                  style: GoogleFonts.lato(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: const Color.fromRGBO(25, 33, 38, 1)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 91,
                              width: 175,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: const Color.fromRGBO(255, 255, 255, 1)),
                              child: Image.asset('assets/heartrate.png'),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 100,
                            width: 135,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color.fromRGBO(255, 232, 198, 1)),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 28,
                                      width: 28,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(3),
                                          color: const Color.fromRGBO(
                                              248, 211, 157, 1)),
                                      child: Image.asset(
                                        'assets/shoes.png',
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Steps",
                                      style: GoogleFonts.lato(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: const Color.fromRGBO(
                                              25, 33, 38, 1)),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "999/2000",
                                      style: GoogleFonts.lato(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: const Color.fromRGBO(
                                              25, 33, 38, 1)),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    LinearPercentIndicator(
                                      animation: true,
                                      animationDuration: 1200,
                                      percent: 0.49,
                                      lineHeight: 12,
                                      width: 111,
                                      barRadius: const Radius.circular(25),
                                      backgroundColor:
                                          const Color.fromRGBO(255, 237, 209, 1),
                                      progressColor:
                                          const Color.fromRGBO(252, 196, 111, 1),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 51,
                            width: 135,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color:const  Color.fromRGBO(246, 207, 207, 1)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                 Text(
                                "Keep it Up! 💪",
                                style: GoogleFonts.lato(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: const Color.fromRGBO(25, 33, 38, 1)),
                              ),
                              ],
                            ),
                          ),
                        ],
                      ),
        
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
           Row(
            children: [
        Container(
          padding:const  EdgeInsets.all(20),
          height: 128,
          width: 178,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromRGBO(239, 226, 255, 1)
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color:const  Color.fromRGBO(214, 187, 248, 1),
                    ),
                    child:  const Icon(FontAwesomeIcons.moon,size: 20,color: Color.fromRGBO(61, 39, 90, 1),),
                  ),
                  const SizedBox(
                  width: 10,
                  ),
                    Text(
                              "Sleep",
                              style: GoogleFonts.lato(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromRGBO(25, 33, 38, 1)),
                            ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset('assets/sleep.png'),
            ],
          ),
        ),
        const Spacer(),
        Container(
          padding:const  EdgeInsets.all(15),
          height: 128,
          width: 156,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23),
            color: const Color.fromRGBO(216, 230, 236, 1)
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color:const  Color.fromRGBO(174, 209, 224, 1),
                    ),
                    child:  const Icon(Icons.water_drop,size: 20,color: Color.fromRGBO(43, 72, 85, 1),),
                  ),
                  const SizedBox(
                  width: 10,
                  ),
                    Text(
                              "Sleep",
                              style: GoogleFonts.lato(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromRGBO(25, 33, 38, 1)),
                            ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset('assets/water.png'),
            ],
          ),
        ),
        
        
            ],
           )
                ],
              ),
            ),
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
                       
                          Navigator.pop(context);
                        
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

  Widget calender(int index, String day, int date) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              dateindex = index;
            });
          },
          child: Container(
            padding: const EdgeInsets.only(left: 14, right: 14, top: 4),
            height: 46,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: dateindex == index
                  ? const Color.fromRGBO(25, 33, 38, 1)
                  : Color.fromRGBO(187, 242, 70, 1),
            ),
            child: Column(
              children: [
                Text(
                  day,
                  style: GoogleFonts.lato(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: dateindex == index
                          ? const Color.fromRGBO(255, 255, 255, 1)
                          : const Color.fromRGBO(25, 33, 38, 1)),
                ),
                Text(
                  '$date',
                  style: GoogleFonts.lato(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: dateindex == index
                          ? const Color.fromRGBO(255, 255, 255, 1)
                          : const Color.fromRGBO(25, 33, 38, 1)),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        dateindex == index
            ? Container(
                height: 6,
                width: 6,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(25, 33, 38, 1)),
              )
            : Container()
      ],
    );
  }
}
