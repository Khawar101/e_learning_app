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
          title: Text(
            "My save list",
            textAlign: TextAlign.center,
            style: GoogleFonts.ibmPlexSans(
                fontSize: 18,
                color: const Color(0xff4873a6).withOpacity(0.7),
                fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
      ),
      body: Column(
        children: [
       
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
         
        ],
      ),
    );
  }
}
