// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe5f1f8),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              child: Image.asset(
                'assets/images/profile_picture.jpeg',
                fit: BoxFit.fitHeight,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03,
                    left: 15,
                    right: 15,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(12)),
                        child: const Icon(
                          Icons.arrow_back,
                          size: 17,
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('00:15:20'),
                          )),
                      SizedBox(
                        height: 135,
                        width: 80,
                        child: Stack(
                          children: [
                            Container(
                              height: 120,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/images/download.jpeg',
                                    fit: BoxFit.fitHeight,
                                  )),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: CircleAvatar(
                                radius: 16,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.camera_alt, size: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Ada Nancy',
                      style: GoogleFonts.ibmPlexSans(
                          color: const Color(0xffffffff),
                          fontSize: 26,
                          fontWeight: FontWeight.w600),
                    ),
                     SizedBox(height: 8),
              
                Text(
                  'Figma teacher',
                  style: GoogleFonts.ibmPlexSans(
                    color: const Color(0xffffffff),
                    fontSize: 12,
                  ),
                ),
                 SizedBox(height: 20),
                Container(
                  height: 140,
                    width: double.infinity,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 90,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            color: Color(0xff3787ff),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.03),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    const Icon(
                                      Icons.home_outlined,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Home',
                                      style: GoogleFonts.ibmPlexSans(
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    const Icon(
                                      Icons.menu,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Menu',
                                      style: GoogleFonts.ibmPlexSans(
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                                              height: 100,
                                              width: 100,
                                              decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0xff3787ff),
                            border: Border.all(color: Colors.black, width: 10)),
                                              child: Padding(
                          padding: const EdgeInsets.all(22),
                          child: Image.asset(
                            'assets/icons/telephone-handler.png',
                            color: const Color(0xffffffff),
                          ),
                                              )),
                        ),
                    ],
                  ),
                ),
             
                            ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
