// ignore: file_names
import 'package:e_learning_app/utils/app_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: SafeArea(
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
                    "Class Booking",
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 24, fontWeight: FontWeight.w500),
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
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            //Calender part
            Expanded(
              child: SingleChildScrollView(
                child: SizedBox(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.06),
                        child: TableCalendar(
                          formatAnimationCurve: Curves.linear,
                          pageAnimationCurve: Curves.bounceIn,
                          calendarStyle: const CalendarStyle(
                            todayTextStyle: TextStyle(color: Colors.black),
                            todayDecoration: BoxDecoration(
                                color: Colors.grey, shape: BoxShape.circle),
                            selectedDecoration: BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                            defaultTextStyle: TextStyle(color: Colors.black),
                          ),
                          firstDay: kFirstDay,
                          lastDay: kLastDay,
                          focusedDay: _focusedDay,
                          calendarFormat: _calendarFormat,
                          selectedDayPredicate: (day) {
                            return isSameDay(_selectedDay, day);
                          },
                          onDaySelected: (selectedDay, focusedDay) {
                            if (!isSameDay(_selectedDay, selectedDay)) {
                              // Call `setState()` when updating the selected day
                              setState(() {
                                _selectedDay = selectedDay;
                                _focusedDay = focusedDay;
                              });
                            }
                          },
                          onFormatChanged: (format) {
                            if (_calendarFormat != format) {
                              // Call `setState()` when updating calendar format
                              setState(() {
                                _calendarFormat = format;
                              });
                            }
                          },
                          onPageChanged: (focusedDay) {
                            // No need to call `setState()` here
                            _focusedDay = focusedDay;
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.06),
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Available Classes",
                                  style: GoogleFonts.ibmPlexSans(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                )),
                            const SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.02),

                              //pop up page

                              child: GestureDetector(
                                onTap: () {
                                  showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                      ),

                                      //,style: GoogleFonts.ibmPlexSans(fontSize:27,fontWeight: FontWeight.w500 ),
                                      title: RichText(
                                        text: const TextSpan(
                                            text: 'Clooking in!',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 24,
                                                fontWeight: FontWeight.w500),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: '\n GOOD JOB',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black),
                                              ),
                                            ]),
                                      ),

                                      content: SizedBox(
                                        height: 300,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.9,
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Learned Today",
                                                  style:
                                                      GoogleFonts.ibmPlexSans(
                                                          color: Colors.black,
                                                          fontSize: 14),
                                                ),
                                                Text(
                                                  "totaly hours",
                                                  style:
                                                      GoogleFonts.ibmPlexSans(
                                                          color: Colors.black,
                                                          fontSize: 14),
                                                )
                                              ],
                                            ),
                                            const SizedBox(height: 10),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                      text: '46',
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              color:
                                                                  Colors.blue,
                                                              fontSize: 14),
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                          text: ' min',
                                                          style: GoogleFonts
                                                              .ibmPlexSans(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 14),
                                                        ),
                                                      ]),
                                                ),
                                                RichText(
                                                  text: TextSpan(
                                                      text: '468',
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              color:
                                                                  Colors.blue,
                                                              fontSize: 14),
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                          text: ' hrs',
                                                          style: GoogleFonts
                                                              .ibmPlexSans(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 14),
                                                        ),
                                                      ]),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 18),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Totally days",
                                                  style:
                                                      GoogleFonts.ibmPlexSans(
                                                          color: Colors.black,
                                                          fontSize: 14),
                                                )),
                                            const SizedBox(height: 10),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: RichText(
                                                text: TextSpan(
                                                    text: '554',
                                                    style:
                                                        GoogleFonts.ibmPlexSans(
                                                            color: Colors.blue,
                                                            fontSize: 14),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: ' days',
                                                        style: GoogleFonts
                                                            .ibmPlexSans(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 14),
                                                      ),
                                                    ]),
                                              ),
                                            ),
                                            const SizedBox(height: 30),
                                            Text(
                                              "Record of this week",
                                              style: GoogleFonts.ibmPlexSans(
                                                  color: Colors.black,
                                                  fontSize: 17),
                                            ),
                                            const SizedBox(height: 14),
                                            const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CircleAvatar(
                                                  radius: 16,
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          15, 0, 0, 0),
                                                  child: Center(
                                                      child: Text(
                                                    "1",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  )),
                                                ),
                                                CircleAvatar(
                                                  radius: 16,
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          15, 0, 0, 0),
                                                  child: Center(
                                                      child: Text(
                                                    "2",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  )),
                                                ),
                                                CircleAvatar(
                                                  radius: 16,
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          15, 0, 0, 0),
                                                  child: Center(
                                                      child: Text(
                                                    "3",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  )),
                                                ),
                                                CircleAvatar(
                                                  radius: 16,
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          15, 0, 0, 0),
                                                  child: Center(
                                                      child: Text(
                                                    "4",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  )),
                                                ),
                                                CircleAvatar(
                                                  radius: 16,
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          15, 0, 0, 0),
                                                  child: Center(
                                                      child: Text(
                                                    "5",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  )),
                                                ),
                                                CircleAvatar(
                                                  radius: 16,
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          15, 0, 0, 0),
                                                  child: Center(
                                                      child: Text(
                                                    "6",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  )),
                                                ),
                                                CircleAvatar(
                                                  radius: 16,
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          15, 0, 0, 0),
                                                  child: Center(
                                                      child: Text(
                                                    "7",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  )),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 30),
                                            Container(
                                              height: 50,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              decoration: BoxDecoration(
                                                color: const Color(0xff3787ff),
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                              child: const Center(
                                                  child: Text(
                                                'Share',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )),
                                            ),
                                          ],
                                        ),
                                      ),

                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'Cancel'),
                                          child: const Text('Cancel'),
                                        ),
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'OK'),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: const LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.white,
                                          Colors.pink,
                                          Colors.blue
                                        ]),
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.03),
                                        child: Text(
                                          "Figma",
                                          style: GoogleFonts.ibmPlexSans(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const SizedBox(height: 2),
                                      Text(
                                        "Dock Icons",
                                        style: GoogleFonts.ibmPlexSans(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                      //   const SizedBox(height: 20),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                          vertical: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.035,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Container(
                                                // ignore: sort_child_properties_last
                                                child: Image.asset(
                                                  'assets/icons/figma-48.png',
                                                  width: 40,
                                                ),
                                                alignment:
                                                    FractionalOffset.topRight,
                                                transform: Matrix4.identity()
                                                  ..rotateZ(
                                                      15 * 3.1415927 / 180),
                                              ),
                                            ),

                                            //  const SizedBox(width: 10),
                                            Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              // ignore: sort_child_properties_last
                                              child: Image.asset(
                                                'assets/icons/figma-48.png',
                                                width: 40,
                                              ),
                                              alignment:
                                                  FractionalOffset.center,
                                            ),
                                            //   const SizedBox(width: 8),
                                            Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                gradient: const LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    colors: [
                                                      Colors.black,
                                                      Colors.black54,
                                                      Colors.black
                                                    ]),
                                              ),
                                              // ignore: sort_child_properties_last
                                              child: Image.asset(
                                                'assets/icons/figma-48.png',
                                                width: 40,
                                              ),
                                              alignment:
                                                  FractionalOffset.center,
                                            ),
                                            //      const SizedBox(width: 8),
                                            Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                gradient: const LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    colors: [
                                                      Colors.black,
                                                      Colors.black54,
                                                      Colors.black
                                                    ]),
                                              ),
                                              // ignore: sort_child_properties_last
                                              child: Image.asset(
                                                'assets/icons/figma-48.png',
                                                color: Colors.black,
                                                width: 40,
                                              ),
                                              alignment:
                                                  FractionalOffset.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height * 0.01,
                            horizontal:
                                MediaQuery.of(context).size.width * 0.08),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Figma class",
                              style: GoogleFonts.ibmPlexSans(
                                  color: Colors.black, fontSize: 20),
                            ),
                            Row(
                              children: [
                                const Icon(Icons.calendar_today, size: 22),
                                const SizedBox(width: 6),
                                Text(
                                  "13 March 2023",
                                  style: GoogleFonts.ibmPlexSans(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height * 0.05,
                            horizontal:
                                MediaQuery.of(context).size.width * 0.16),
                        child: Container(
                          height: 55,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xff3787ff),
                          ),
                          child: Center(
                              child: Text(
                            "Book now",
                            style: GoogleFonts.ibmPlexSans(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
