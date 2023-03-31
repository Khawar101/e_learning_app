import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseDetailPage extends StatefulWidget {
  const CourseDetailPage({super.key});

  @override
  State<CourseDetailPage> createState() => _CourseDetailPageState();
}

class _CourseDetailPageState extends State<CourseDetailPage> {
  TabController? controller;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.amber.shade100,
                  child: Image.asset(
                    'assets/images/profile-pic.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
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
                      const SizedBox(height: 15),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                                'assets/images/profile_picture.jpeg'),
                          ),
                          const SizedBox(width: 15),
                          Text("Anny Morriarty",
                              style: GoogleFonts.ibmPlexSans(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text("Comic drawing essential for everyone!",
                          style: GoogleFonts.ibmPlexSans(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(height: 25),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.access_time_outlined,
                                    size: 16,
                                  ),
                                  const SizedBox(width: 7),
                                  Text("1 hours 30 min",
                                      style: GoogleFonts.ibmPlexSans(
                                          fontSize: 12)),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star_border_outlined,
                                    size: 16,
                                  ),
                                  const SizedBox(width: 7),
                                  Text("4.7 (753)",
                                      style: GoogleFonts.ibmPlexSans(
                                          fontSize: 12)),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.videocam_sharp,
                                    size: 16,
                                  ),
                                  const SizedBox(width: 7),
                                  Text("12 Lessons",
                                      style: GoogleFonts.ibmPlexSans(
                                          fontSize: 12)),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.person_outline,
                                    size: 16,
                                  ),
                                  const SizedBox(width: 7),
                                  Text("2K students",
                                      style: GoogleFonts.ibmPlexSans(
                                          fontSize: 12)),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors",
                        style: TextStyle(height: 1.3, wordSpacing: 2),
                      ),
                      const SizedBox(height: 40),
                      TabBar(
                        indicatorWeight: 0.1,
                        indicatorColor: Colors.blue,
                        controller: controller,
                        labelStyle: GoogleFonts.ibmPlexSans(
                            fontSize: 14.0, fontWeight: FontWeight.w500),
                        onTap: (value) {},
                        labelColor: Colors.blue,
                        unselectedLabelColor: Colors.blue.withOpacity(0.4),
                        tabs: [
                          Tab(
                            text: 'pending',
                          ),
                          Tab(
                            text: 'completed',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SliverFillRemaining(
                  child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: controller,
                children: [
                  SingleChildScrollView(
                      physics: const NeverScrollableScrollPhysics(),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:20.0),
                        child: Column(
                          children: [
                            Text(
                                "These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors"),
                            Text(
                                "These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors"),
                            Text(
                                "These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors"),
                            Text(
                                "These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors"),
                          ],
                        ),
                      )),
                  SingleChildScrollView(
                      physics: const NeverScrollableScrollPhysics(),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:20.0),
                        child: Column(
                          children: [
                            Text(
                                "These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors"),
                            Text(
                                "These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors"),
                            Text(
                                "These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors"),
                            Text(
                                "These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors"),
                          ],
                        ),
                      )),
                ],
              ))
            ],
          )),
    );
  }
}
