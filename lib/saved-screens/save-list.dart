// ignore: file_names
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class SaveList extends StatefulWidget {
  const SaveList({super.key});

  @override
  State<SaveList> createState() => _SaveListState();
}

class _SaveListState extends State<SaveList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe5f1f8),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Center(
              child: Text(
                "My save list",
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 32,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Expanded(
              child: ListView.builder(
                  //    shrinkWrap: true,
                  itemCount: 8,
                  // physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.01,
                          horizontal:
                              MediaQuery.of(context).size.width * 0.025),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            width: 100,
                            color: Colors.black,
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.025),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Adobe illustrator for all beginner artist",
                                  softWrap: true,
                                  maxLines: 3,
                                  style: GoogleFonts.ibmPlexSans(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Text(
                                  "Samule Doe",
                                  style: GoogleFonts.ibmPlexSans(
                                      fontSize: 16,
                                      color: const Color(0xff939495),
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.person_2_outlined,
                                      color: Color(0xff939495),
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.01),
                                    Text(
                                      "4k student",
                                      style: GoogleFonts.ibmPlexSans(
                                          fontSize: 16,
                                          color: const Color(0xff939495),
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.05),
                                    const Icon(
                                      Icons.star,
                                      color: Color(0xff3787ff),
                                      size: 20,
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.02),
                                    Text(
                                      "4.7",
                                      style: GoogleFonts.ibmPlexSans(
                                          fontSize: 16,
                                          color: const Color(0xff939495),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xff3787ff),
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.07,
                    vertical: MediaQuery.of(context).size.height * 0.02),
                child: Text(
                  "Add more",
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 18,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          ],
        ),
      ),
    );
  }
}
