import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
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
                    horizontal: MediaQuery.of(context).size.width * 0.04,
                    vertical: MediaQuery.of(context).size.height * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.arrow_back_ios, color: Colors.black),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "1 Replies",
                          style: GoogleFonts.ibmPlexSans(fontSize: 16),
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              color: const Color(0xff3787ff),
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                              child: Text(
                            "Add reply",
                            style: GoogleFonts.ibmPlexSans(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    //student section
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height * 0.03),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 25,
                                //  backgroundColor: Colors.black,
                                backgroundImage:
                                    AssetImage('assets/images/profile-pic.jpg'),
                              ),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.03),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "@mouni",
                                    style: GoogleFonts.ibmPlexSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "11 min ago",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 12),
                                      ),
                                      SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03),
                                      const CircleAvatar(radius: 1),
                                      SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03),
                                      Text(
                                        "Student",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          //   SizedBox(height: MediaQuery.of(context).size.height*0.02),
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.17,
                                top: MediaQuery.of(context).size.height * 0.02),
                            child: Text(
                              "What is NestedScrollView ? The Fluton defines kjfkjkl jhfuewhuj! ",
                              style: GoogleFonts.ibmPlexSans(),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.17,
                                top: MediaQuery.of(context).size.height * 0.02),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Liked",
                                      style: GoogleFonts.ibmPlexSans(
                                          fontSize: 12,
                                          color: const Color(0xff3787ff)),
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.05),
                                    Text(
                                      "Reply",
                                      style:
                                          GoogleFonts.ibmPlexSans(fontSize: 12),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.thumb_up_off_alt_outlined,
                                      size: 15,
                                      color: Color(0xff3787ff),
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.02),
                                    Text(
                                      "21",
                                      style:
                                          GoogleFonts.ibmPlexSans(fontSize: 12),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //teacher section

                    Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height * 0.03),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage('assets/images/profile-pic.jpg'),
                              ),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.03),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "@mouni",
                                    style: GoogleFonts.ibmPlexSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    "11 min ago",
                                    style:
                                        GoogleFonts.ibmPlexSans(fontSize: 12),
                                  ),
                                ],
                              ),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.15),
                              Container(
                                height: 30,
                                width: 55,
                                color: const Color(0xff3787ff),
                                child: Center(
                                    child: Text(
                                  "Teacher",
                                  style: GoogleFonts.ibmPlexSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                )),
                              ),
                            ],
                          ),
                          //   SizedBox(height: MediaQuery.of(context).size.height*0.02),
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.17,
                                top: MediaQuery.of(context).size.height * 0.02),
                            child: Text(
                              "What is NestedScrollView ? The Fluton defines kjfkjkl jhfuewhuj! ",
                              style: GoogleFonts.ibmPlexSans(),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.17,
                                top: MediaQuery.of(context).size.height * 0.02),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Liked",
                                      style: GoogleFonts.ibmPlexSans(
                                          fontSize: 12,
                                          color: const Color(0xff3787ff)),
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.05),
                                    Text(
                                      "Reply",
                                      style:
                                          GoogleFonts.ibmPlexSans(fontSize: 12),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.thumb_up_off_alt_outlined,
                                      size: 15,
                                      color: Color(0xff3787ff),
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.02),
                                    Text(
                                      "21",
                                      style:
                                          GoogleFonts.ibmPlexSans(fontSize: 12),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: 70,
        color: Colors.white,
        child: Row(
          children: const [
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: TextField(
                maxLines: null,
                decoration: InputDecoration(
                  hintText: "Write a comment",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(width: 3),
            Icon(
              Icons.send_sharp,
              size: 30,
              color:  Color(0xff3787ff),
            ),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
