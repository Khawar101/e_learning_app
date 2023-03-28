// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeScreen4 extends StatefulWidget {
  const HomeScreen4({super.key});

  @override
  State<HomeScreen4> createState() => _HomeScreen4State();
}

class _HomeScreen4State extends State<HomeScreen4> {
  static List<String> itemsnames = [
    'Class Schedule',
    'Studying',
    'Saved',
    'Course details',
    'Lesson Content(50)',
    '120 Reviews'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe4f1f8),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.04,
                        vertical: MediaQuery.of(context).size.height * 0.04),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.arrow_back_ios_rounded,
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
                          Icons.share_outlined,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    color: Colors.blue,
                    // decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(12),
                    //    ),
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
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
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
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.03,
                horizontal: MediaQuery.of(context).size.width * 0.03,
              ),
              child: Column(
                children: [
                  Center(
                      child: Text(
                    'Here is what learners are saying',
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  )),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: Container(
                      height: 400,
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          itemCount: 6,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                            
                                // width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              0.03,
                                      vertical:
                                          MediaQuery.of(context).size.height *
                                              0.025),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RatingBar.builder(
                                        initialRating: 3,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: 20,
                                        itemPadding:
                                            const EdgeInsets.only(right: 6),
                                        itemBuilder: (context, _) => const Icon(
                                          Icons.star,
                                          size: 12,
                                          color: Colors.white,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        'Best Course and benefits',
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                      const Spacer(),
                                      Row(
                                        children: [
                                          const CircleAvatar(
                                            radius: 16,
                                            backgroundImage: AssetImage(
                                                'assets/images/download (1).jpeg'),
                                          ),
                                          const SizedBox(width: 8),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Rakibull hassan',
                                                style: GoogleFonts.ibmPlexSans(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                              Text(
                                                '2 hours ago',
                                                style: GoogleFonts.ibmPlexSans(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      child: Text(
                        'See all Reiews',
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Unlock All Videos',
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
