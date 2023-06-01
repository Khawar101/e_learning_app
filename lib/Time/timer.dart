import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe4f1f8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.045,
                    vertical: MediaQuery.of(context).size.height * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/icons/left-arrow.png'),
                    Text(
                      "Timer",
                      style: GoogleFonts.ibmPlexSans(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    // ignore: prefer_const_constructors
                    Stack(
                      children: const [
                        Icon(Icons.notifications_outlined, size: 28),
                        CircleAvatar(
                          radius: 6,
                          backgroundColor: Color(0xff3787ff),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.06,
                  //   vertical: MediaQuery.of(context).size.height*0.03,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Time",
                          style: GoogleFonts.ibmPlexSans(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        ),
                        const Icon(Icons.more_horiz),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Container(
                      //  height: 150,
                      //     width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.09,
                            vertical:
                                MediaQuery.of(context).size.height * 0.015),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "01:15:02",
                                  style: GoogleFonts.ibmPlexSans(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: MediaQuery.of(context).size.height *
                                      0.016),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/sort-right-48.png',
                                    width: 32,
                                  ),
                                  Text(
                                    "Running Class",
                                    style: GoogleFonts.ibmPlexSans(
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Today",
                          style: GoogleFonts.ibmPlexSans(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "See All",
                          style: GoogleFonts.ibmPlexSans(
                              color: const Color(0xff3787ff)),
                        ),
                      ],
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: 3,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                vertical:
                                    MediaQuery.of(context).size.height * 0.015),
                            child: Container(
                              //    height: 70,
                              decoration: BoxDecoration(
                                  color: const Color(0xff3787ff),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.03,
                                    vertical:
                                        MediaQuery.of(context).size.height *
                                            0.018),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset('assets/icons/figma-48.png',
                                            width: 40),
                                        const SizedBox(width: 14),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Figma",
                                              style: GoogleFonts.ibmPlexSans(
                                                  color: const Color(0xffffffff)),
                                            ),
                                            SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.02),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                  child: Padding(
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                            MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.02,
                                                        vertical: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.004),
                                                    child: Text(
                                                      "UI Design",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                  child: Padding(
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                            MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.02,
                                                        vertical: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.004),
                                                    child: Text(
                                                      "ui/ux",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              color:
                                                                  Colors.black),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "00:21:09",
                                          style: GoogleFonts.ibmPlexSans(
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.02),
                                        Image.asset(
                                          'assets/icons/sort-right-48.png',
                                          width: 24,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xff3787ff),
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                          child: Text(
                        "Stop",
                        style: GoogleFonts.ibmPlexSans(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
