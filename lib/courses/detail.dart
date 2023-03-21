import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController _scrollViewController;
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xffe4f1f8),
        appBar: AppBar(
          backgroundColor: const Color(0xffe4f1f8),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.arrow_back_ios, color: Colors.black),
              Text(
                "Details",
                style: GoogleFonts.ibmPlexSans(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const Icon(
                Icons.bookmark_outline,
                color: Colors.black,
                size: 27,
              )
            ],
          ),
        ),
        body: CustomScrollView(
          shrinkWrap: true,
          //    controller: _scrollViewController,
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                height: 300,
                color: Colors.blue,
              ),
            ),
            //  SliverStickyHeader(
            //  header:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  color: Colors.amber.shade100,
                  child: Image.asset(
                    'assets/images/profile-pic.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                        width: 60,
                        color: Colors.blue,
                        child: const Center(
                            child: Text(
                          "HOT",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                                'assets/images/profile_picture.jpeg'),
                          ),
                          Text("Anny Morriarty",
                              style: GoogleFonts.ibmPlexSans(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text("Comic drawing essential\nfor everyone!",
                          style: GoogleFonts.ibmPlexSans(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(height: 25),
                      Row(
                        children: [
                          const Icon(
                            Icons.access_time_outlined,
                            size: 16,
                          ),
                          const SizedBox(width: 7),
                          Text("1 hours 30 min",
                              style: GoogleFonts.ibmPlexSans(fontSize: 12)),
                          Expanded(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.videocam_sharp,
                                size: 16,
                              ),
                              const SizedBox(width: 7),
                              Text("12 Lessons",
                                  style: GoogleFonts.ibmPlexSans(fontSize: 12)),
                            ],
                          )),
                        ],
                      ),
                      const SizedBox(height: 18),
                      Row(
                        children: [
                          const Icon(
                            Icons.star_border_outlined,
                            size: 16,
                          ),
                          const SizedBox(width: 7),
                          Text("4.7 (753)",
                              style: GoogleFonts.ibmPlexSans(fontSize: 12)),
                          const SizedBox(width: 40),
                          Expanded(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.person_outline,
                                size: 16,
                              ),
                              const SizedBox(width: 7),
                              Text("2K students",
                                  style: GoogleFonts.ibmPlexSans(fontSize: 12)),
                            ],
                          )),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors",
                        style: TextStyle(height: 1.3, wordSpacing: 2),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBar(
                    isScrollable: true,
                    indicatorColor: const Color(0xffe10d37),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorPadding: const EdgeInsets.only(bottom: 3),
                    unselectedLabelColor: Colors.black,
                    labelColor: Colors.red,
                    tabs: const [
                      Tab(
                        icon: Icon(Icons.people),
                      ),
                      Tab(
                        icon: Icon(Icons.person),
                      ),
                    ],
                    controller: _tabController,
                    //    indicatorSize: TabBarIndicatorSize.tab,
                  ),
                ),
              ],
            ),
            //   ),
            Expanded(
              child: SliverFillRemaining(
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _tabController,
                  children: const [
                    SingleChildScrollView(
                        child: Text(
                            "These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editorskjghjfghfhfkihyuityrurytrytrytfr   jhgjhgjhgjhghjgjhg  uyhgtuytuytuy ")),
                    Text('Person')
                  ],
                ),
              ),
            ),

            //
          ],
        ),
      ),
    );
  }
}
