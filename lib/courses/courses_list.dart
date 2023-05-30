
import 'package:e_learning_app/courses/Course_detail.dart';
import 'package:e_learning_app/Home-Screens/home_screeen1.dart';
import 'package:e_learning_app/courses/save_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class ListOfCourses extends StatefulWidget {
  const ListOfCourses({super.key});

  @override
  State<ListOfCourses> createState() => _ListOfCoursesState();
}

class _ListOfCoursesState extends State<ListOfCourses> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () {
              // Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const HomeScreen1())));
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black54,
              size: 18,
            ),
          ),
          title: Text(
            "Courses",
            textAlign: TextAlign.center,
            style: GoogleFonts.ibmPlexSans(
                fontSize: 18,
                color: const Color(0xff4873a6).withOpacity(0.7),
                fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(
                Icons.favorite,
                color: const Color(0xff4873a6).withOpacity(0.7),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SaveScreen()),
                );
              },
            ),
            const Padding(
                padding: EdgeInsets.only(right: 15),
                child: Image(
                  image: AssetImage('assets/icons/icons8-adjust.png'),
                  color: Colors.black54,
                  width: 28,
                ))
          ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 9,
            // physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.02,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const CourseDetailPage())));
                  },
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 80,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10)),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/girl-images-4.jpg',
                                  fit: BoxFit.cover,
                                )),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.025),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Physics",
                                      softWrap: true,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.ibmPlexSans(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isPressed = !isPressed;
                                        });
                                      },
                                      child: Icon(
                                        isPressed
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: isPressed
                                            ? const Color(0xff4873a6)
                                                .withOpacity(0.7)
                                            : Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01),
                                RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 18,
                                  itemPadding: const EdgeInsets.only(right: 6),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    size: 12,
                                    color: const Color(0xff4873a6)
                                        .withOpacity(0.7),
                                  ),
                                  onRatingUpdate: (rating) {
                                    // ignore: avoid_print
                                    print(rating);
                                  },
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '34',
                                          style: GoogleFonts.ibmPlexSans(
                                            color: Colors.black,
                                            fontSize: 10,
                                          ),
                                        ),
                                        const SizedBox(width: 3),
                                        Text(
                                          'Reviews',
                                          style: GoogleFonts.ibmPlexSans(
                                            color: Colors.black,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '100%',
                                          style: GoogleFonts.ibmPlexSans(
                                            color: Colors.black,
                                            fontSize: 10,
                                          ),
                                        ),
                                        const SizedBox(width: 3),
                                        Text(
                                          'Response Rate',
                                          style: GoogleFonts.ibmPlexSans(
                                            color: Colors.black,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
