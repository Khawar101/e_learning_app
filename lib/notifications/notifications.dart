import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen>
    with SingleTickerProviderStateMixin {
//    late TabController _scrollViewController;
//   late TabController _tabController;
//   @override
//   void initState() {
//     _tabController = TabController(length: 2, vsync: this);
//     super.initState();
//   }
//   @override
//  void dispose() {
//    _tabController.dispose();
//    super.dispose();
//  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xffe5f1f8),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
              vertical: MediaQuery.of(context).size.height * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Notifications',
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 26, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.007),
              TabBar(
                isScrollable: false,
                //  indicatorColor: const Color(0xff3787ff),
                ///     indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: const EdgeInsets.only(bottom: 15),
                unselectedLabelColor: Colors.black,
                labelColor: Colors.black,
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(
                      width: 1.0, color: Color.fromARGB(255, 11, 99, 172)),
                  insets: EdgeInsets.symmetric(horizontal: 70.0),
                ),
                tabs: [
                  Tab(
                      icon: Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.19),
                        child: const CircleAvatar(
                          radius: 3,
                          backgroundColor: Colors.blue,
                        ),
                      ),
                      iconMargin: const EdgeInsets.all(0),
                      child: Text(
                        "message",
                        style: GoogleFonts.ibmPlexSans(
                            fontWeight: FontWeight.w700, fontSize: 18),
                      ),
                    ),
                  Tab(
                      icon: Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.25),
                        child: const CircleAvatar(
                          radius: 3,
                          backgroundColor: Colors.blue,
                        ),
                      ),
                      iconMargin: const EdgeInsets.all(0),
                      child: Text(
                        "notification",
                        style: GoogleFonts.ibmPlexSans(
                            fontWeight: FontWeight.w700, fontSize: 18),
                      ),
                    ),
                ],
                //        controller: _tabController,
                //    indicatorSize: TabBarIndicatorSize.tab,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                      // left: MediaQuery.of(context).size.width * 0.06,
                      // right: MediaQuery.of(context).size.width * 0.06,
                      bottom: MediaQuery.of(context).size.height * 0.03),
                  child: SizedBox(
                    child: TabBarView(
                      //      physics: const NeverScrollableScrollPhysics(),
                      //   controller: _tabController,
                      children: [
                        MediaQuery.removePadding(
                            context: context,
                            removeTop: true,
                            child: ListView.builder(
                                itemCount: 7,
                                itemBuilder: (BuildContext context, index) {
                                  return Padding(
                                    padding: EdgeInsets.only(
                                        bottom:
                                            MediaQuery.of(context).size.height *
                                                0.02),
                                    child: Container(
                                      // height: MediaQuery.of(context).size.height,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.blue),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.05,
                                            vertical: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.02),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      height: 50,
                                                      width: 50,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          child: Image.asset(
                                                              'assets/images/download.jpeg')),
                                                    ),
                                                    const SizedBox(width: 7),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Daniel Lawson",
                                                          style: GoogleFonts
                                                              .ibmPlexSans(
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            height: 6),
                                                        Text(
                                                          "Online",
                                                          style: GoogleFonts
                                                              .ibmPlexSans(
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                                Text(
                                                  "04:32 pm",
                                                  style:
                                                      GoogleFonts.ibmPlexSans(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 6),
                                            Text(
                                              "When dealing with technical commands that use a keyboard (for example, ",
                                              style: GoogleFonts.ibmPlexSans(
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(height: 15),
                                            SizedBox(
                                              height: 160,
                                              width: double.infinity,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                child: Image.asset(
                                                    'assets/images/download (1).jpeg',
                                                    fit: BoxFit.fitWidth),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                        MediaQuery.removePadding(
                          context: context,
                          removeTop: true,
                          child: ListView.builder(
                              itemCount: 8,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context).size.height *
                                        0.02,
                                    //     horizontal: MediaQuery.of(context).size.width*0.025
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          vertical: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.02),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Image.asset(
                                                'assets/icons/chat-message64.png',
                                              ),
                                            ),
                                            // child: Image.asset(
                                            //     'assets/images/tree.jpg',
                                            //     fit: BoxFit.cover),
                                          ),
                                          SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.035),
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Congratulation on completing the  hygfyuhgfyuhfytv tdrt",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  //  softWrap: true,
                                                  maxLines: 1,
                                                  style:
                                                      GoogleFonts.ibmPlexSans(
                                                          fontSize: 14,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                ),
                                                SizedBox(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.01),
                                                Row(
                                                  children: [
                                                    const Icon(
                                                      Icons.access_time_filled,
                                                      size: 14,
                                                      color: Colors.white54,
                                                    ),
                                                    const SizedBox(width: 5),
                                                    Text(
                                                      "Just now",
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              color: Colors
                                                                  .white54,
                                                              fontSize: 12),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
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
       ),
      ),
    );
  }
}
