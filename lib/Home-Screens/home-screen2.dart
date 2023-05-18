// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:readmore/readmore.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
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

//page change
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Marketing',
                      style: GoogleFonts.ibmPlexSans(
                          fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.013),
                    const ReadMoreText(
                      'The Flutter framework builds its layout via the composition of widgets, everything that you construct programmatically is a widget and these are compiled together to create the user interface. ',
                      trimLines: 2,
                      trimLength: 80,
                      style: TextStyle(color: Colors.black),
                      colorClickableText: Colors.black,
                      trimMode: TrimMode.Length,
                      trimCollapsedText: '...Read more',
                      moreStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      trimExpandedText: ' Less',
                      lessStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.013),
                    RichText(
                      text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: '10',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                          TextSpan(
                              text: ' Chapter',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                          TextSpan(
                              text: '         Full',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                          TextSpan(
                              text: ' 5 hours',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/images/moon.webp'),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Rakibull hassan',
                              style: GoogleFonts.ibmPlexSans(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.009),
                            Row(
                              children: [
                                Text(
                                  'Instructor',
                                  style: GoogleFonts.ibmPlexSans(fontSize: 12),
                                ),
                                SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.06),
                                const Icon(
                                  Icons.star,
                                  color: Colors.blue,
                                  size: 12,
                                ),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.014),
                                Text(
                                  '4.5(120 Reviews)',
                                  style: GoogleFonts.ibmPlexSans(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.15),
                          child: const Align(
                              alignment: Alignment.bottomRight,
                              child: Icon(
                                Icons.play_circle_filled,
                                color: Colors.blue,
                                size: 40,
                              )),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/images/promotion.png',
                            width: 160,
                          ),
                        ),
                      ],
                    ),
                 SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                 Text(
                   'You can buy the full course.You have been subscribe to this app for 1 year.',
                    style: GoogleFonts.ibmPlexSans(fontSize: 12),
                     ),
                     Align(
                      alignment: Alignment.bottomRight,
                       child: Container(
                        decoration: BoxDecoration(
                         color: Colors.blue,  
                         borderRadius: BorderRadius.circular(120)
                        ),
                       
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                          child: Text(
                                      'upgrade',
                                      style: GoogleFonts.ibmPlexSans(fontSize: 14,color: Colors.white),
                                    ),
                        ),
                       ),
                     ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                   
                       Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue
                        ),
                          child: Center(child: Text('Unlock All Videos',style: GoogleFonts.ibmPlexSans(color: Colors.white))),
                       ),
                      
                      
                      
                    
                  ],
                ),
              ),
            ),
          ),



        ],
      )),
    );
  }
}
