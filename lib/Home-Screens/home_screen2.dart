// ignore: file_names
import 'package:e_learning_app/Home-Screens/home_screen3.dart';
import 'package:e_learning_app/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:readmore/readmore.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
// List<ItemDataModel>ItemData=List.generate(itemsnames.length, (index) => ItemDataModel('${itemsnames[index]}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xffe4f1f8),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black54,
              size: 18,
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Container(
              height: 30,
              width: 110,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff4873a6).withOpacity(0.2),
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.language,
                    size: 18,
                    color: const Color(0xff4873a6).withOpacity(0.7),
                  ),
                  const SizedBox(width: 3),
                  Text(
                    "English",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 15,
                        color: const Color(0xff4873a6).withOpacity(0.7),
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: const Color(0xff4873a6).withOpacity(0.7),
                    size: 24,
                  )
                ],
              ),
            ),
          ),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(
                Icons.share_outlined,
                color: Colors.black54,
                size: 20,
              ),
            )
          ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.04,
                  vertical: MediaQuery.of(context).size.height * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BigText(
                    text: 'Marketing',
                    color: Colors.black,
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.017),
                  const ReadMoreText(
                    'The Flutter framework builds its layout via the composition of widgets, everything that you construct programmatically is a widget and these are compiled together to create the user interface.',
                    trimLines: 2,
                    trimLength: 80,
                    style: TextStyle(color: Colors.black45),
                    colorClickableText: Colors.black,
                    trimMode: TrimMode.Length,
                    trimCollapsedText: 'Read More',
                    moreStyle: TextStyle(
                        color: Color(0xff4873a6), fontWeight: FontWeight.w500),
                    trimExpandedText: 'Show Less',
                    lessStyle: TextStyle(
                        color: Color(0xff4873a6), fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  // ButtonText(text: '10 chapter', color: Colors.black),
                  // SmallText(text: '10 chapter', color: Colors.black),
                  Row(
                    children: [
                      const CustomText(
                          text: '10 chapter',
                          size: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                      const CustomText(
                          text: 'Full 5 hours',
                          size: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ],
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.028),
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
                              const SmallText(
                                  text: 'Instructor', color: Colors.black),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.06),
                              const Icon(
                                Icons.star,
                                color: Color(0xff4873a6),
                                size: 12,
                              ),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.014),
                              const SmallText(
                                  text: '4.5(120 Reviews', color: Colors.black),
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
                            right: 10,
                            top: MediaQuery.of(context).size.height * 0.15),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Icon(
                              Icons.play_circle_filled,
                              color: const Color(0xFF4873A6).withOpacity(0.7),
                              size: 40,
                            )),
                      ),
                      Center(
                        child: Image.asset(
                          'assets/images/startup.png',
                          width: 110,
                          height: 110,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                  const SmallText(
                      text:
                          'You can buy the full course.You have been subscribe to this app for 1 year.',
                      color: Colors.black45),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                          color: const Color(0xFF4873A6).withOpacity(0.7),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                          child:
                              ButtonText(text: 'upgrade', color: Colors.white)),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.08),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const HomeScreen3())));
                    },
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF4873A6).withOpacity(0.7),
                      ),
                      child: const Center(
                          child: ButtonText(
                              text: 'Unlock All Videos', color: Colors.white)),
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
