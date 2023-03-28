// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  static List<String> itemsnames = [
    'Class Schedule',
    'Studying',
    'Saved',
    'Course details',
    'Lesson Content(50)',
    '120 Reviews'
  ];

// List<ItemDataModel>ItemData=List.generate(itemsnames.length, (index) => ItemDataModel('${itemsnames[index]}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe4f1f8),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.04,
                    vertical: MediaQuery.of(context).size.height * 0.04),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.vertical_distribute_sharp,
                          color: Colors.black,
                          size: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 2),
                            child: Row(children: [
                              const Icon(Icons.language,
                                  color: Colors.white, size: 13),
                              const SizedBox(width: 3),
                              Text(
                                'English',
                                style: GoogleFonts.ibmPlexSans(
                                    color: Colors.white, fontSize: 12),
                              ),
                              const SizedBox(width: 5),
                              const Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Colors.white,
                                size: 15,
                              ),
                            ]),
                          ),
                        ),
                        const Icon(
                          Icons.notifications_active_outlined,
                          color: Colors.black,
                        )
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blue),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.builder(
                            // padding: EdgeInsets.only(right: 3),
                            // This next line does the trick.
                            scrollDirection: Axis.horizontal,
                            itemCount: itemsnames.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: const Color(0xffe4f1f8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: Center(
                                        child: Text(
                                      itemsnames[index],
                                      style: GoogleFonts.ibmPlexSans(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    )),
                                  ),
                                ),
                              );
                            }),
                      ),
                    )
                  ],
                ),
              ),
            ),
//page change
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.04,
                  vertical: MediaQuery.of(context).size.height * 0.04),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        //  height: 200,
                        width: MediaQuery.of(context).size.width * 0.4,
                        //    color: Colors.blue,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/promotion.png',
                              width: 150,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(12)),
                                color: Colors.blue,
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.02,
                                    vertical:
                                        MediaQuery.of(context).size.height *
                                            0.01),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Marketing',
                                          style: GoogleFonts.ibmPlexSans(
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          '\$50',
                                          style: GoogleFonts.ibmPlexSans(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      'By:Salim',
                                      style: GoogleFonts.ibmPlexSans(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                    const SizedBox(height: 12),
                                    const Divider(
                                      thickness: 1,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(height: 4),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              '50',
                                              style: GoogleFonts.ibmPlexSans(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                            const SizedBox(width: 3),
                                            Text(
                                              'Lesson',
                                              style: GoogleFonts.ibmPlexSans(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 12,
                                            ),
                                            const SizedBox(width: 3),
                                            Text(
                                              '4.5',
                                              style: GoogleFonts.ibmPlexSans(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        //  height: 200,
                        width: MediaQuery.of(context).size.width * 0.4,
                        //    color: Colors.blue,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/startup.png',
                              width: 150,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(12)),
                                color: Colors.blue,
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.02,
                                    vertical:
                                        MediaQuery.of(context).size.height *
                                            0.01),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'UI/UX Design',
                                          style: GoogleFonts.ibmPlexSans(
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          '\$40',
                                          style: GoogleFonts.ibmPlexSans(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      'By:Salim',
                                      style: GoogleFonts.ibmPlexSans(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                    const SizedBox(height: 12),
                                    const Divider(
                                      thickness: 1,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(height: 4),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              '34',
                                              style: GoogleFonts.ibmPlexSans(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                            const SizedBox(width: 3),
                                            Text(
                                              'Lesson',
                                              style: GoogleFonts.ibmPlexSans(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 12,
                                            ),
                                            const SizedBox(width: 3),
                                            Text(
                                              '4.5',
                                              style: GoogleFonts.ibmPlexSans(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.03,
                          vertical: MediaQuery.of(context).size.height * 0.02),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  const Icon(
                                    Icons.circle_outlined,
                                    size: 20,
                                  ),
                                  Positioned(
                                      left: MediaQuery.of(context).size.width *
                                          0.013,
                                      top: MediaQuery.of(context).size.height *
                                          0.006,
                                      child: const Icon(Icons.circle_outlined,
                                          size: 10)),
                                ],
                              ),
                              const SizedBox(width: 14),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'All Lesson of Marketing',
                                    style: GoogleFonts.ibmPlexSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    'Here 52 Lesson and complete 32 lesson',
                                    style: GoogleFonts.ibmPlexSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 335),
                            child: StepProgressIndicator(
                              totalSteps: 1,
                              fallbackLength: 30,
                              size: 1,
                              direction: Axis.vertical,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.check_circle_outlined,
                                size: 18,
                              ),
                              const SizedBox(width: 14),
                              Text(
                                'what is marketing? 56 Minutes',
                                style: GoogleFonts.ibmPlexSans(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 335),
                            child: StepProgressIndicator(
                              totalSteps: 1,
                              fallbackLength: 20,
                              size: 1,
                              direction: Axis.vertical,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.check_circle_outlined,
                                size: 18,
                              ),
                              const SizedBox(width: 14),
                              Text(
                                'what is your defination of marketing?     10 Minutes',
                                style: GoogleFonts.ibmPlexSans(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 335),
                            child: StepProgressIndicator(
                              totalSteps: 1,
                              fallbackLength: 20,
                              size: 1,
                              direction: Axis.vertical,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.check_circle_outlined,
                                size: 18,
                              ),
                              const SizedBox(width: 14),
                              Text(
                                'what are 3 definatin of marketing?    56 Minutes',
                                style: GoogleFonts.ibmPlexSans(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 335),
                            child: StepProgressIndicator(
                              totalSteps: 1,
                              fallbackLength: 20,
                              size: 1,
                              direction: Axis.vertical,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.play_circle_outline_rounded,
                                size: 18,
                              ),
                              const SizedBox(width: 14),
                              Text(
                                'what are the 4 type of marketing     56 Minutes',
                                style: GoogleFonts.ibmPlexSans(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 335),
                            child: StepProgressIndicator(
                              totalSteps: 1,
                              fallbackLength: 20,
                              size: 1,
                              direction: Axis.vertical,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.play_circle_outline_rounded,
                                size: 18,
                              ),
                              const SizedBox(width: 14),
                              Text(
                                'what the marketing is important?     56 Minutes',
                                style: GoogleFonts.ibmPlexSans(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 335),
                            child: StepProgressIndicator(
                              totalSteps: 1,
                              fallbackLength: 20,
                              size: 1,
                              direction: Axis.vertical,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.play_circle_outline_rounded,
                                size: 18,
                              ),
                              const SizedBox(width: 14),
                              Text(
                                'what is marketing necessary?      56 Minutes',
                                style: GoogleFonts.ibmPlexSans(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
