// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentProfile extends StatefulWidget {
  const StudentProfile({super.key});

  @override
  State<StudentProfile> createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile>
    with SingleTickerProviderStateMixin {
  late TabController _scrollViewController;
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }
//   @override
//  void dispose() {
//    _tabController.dispose();
//    super.dispose();
//  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: const Color(0xffe5f1f8),
        body: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.06,
                  vertical: MediaQuery.of(context).size.height * 0.03,
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.06),
                        const Expanded(
                          child: Center(
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage(
                                  'assets/images/profile_picture.jpeg'),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.share,
                          size: 28,
                        )
                      ],
                    ),
                    Text(
                      "@annymori",
                      style: GoogleFonts.ibmPlexSans(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Text(
                      "Professinol comic book artist\nand full time art teacher",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.ibmPlexSans(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.03,
                              vertical:
                                  MediaQuery.of(context).size.height * 0.01,
                            ),
                            child: Text(
                              "teacher",
                              style: GoogleFonts.ibmPlexSans(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color(0xff3787ff),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.03,
                              vertical:
                                  MediaQuery.of(context).size.height * 0.01,
                            ),
                            child: Text(
                              "Follow",
                              style: GoogleFonts.ibmPlexSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: const Color(0xffbb1a7b),
                          child: Image.asset(
                            'assets/icons/instagram-48.png',
                            width: 32,
                          ),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03),
                        CircleAvatar(
                            radius: 20,
                            //   backgroundColor: Color(0xffbb1a7b),
                            child: Image.asset(
                              'assets/icons/facebook-logo.png',
                            )),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03),
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              AssetImage('assets/icons/twitter-circled.png'),
                          // child: Image.asset('assets/icons/twitter-50.png',width: 10,)
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    TabBar(
                      isScrollable: false,
                      indicatorColor: const Color(0xff3787ff),
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorPadding: const EdgeInsets.only(bottom: 3),
                      unselectedLabelColor: Colors.black,
                      labelColor: const Color(0xff3787ff),
                      tabs: const [
                        Tab(
                          icon: Text("23"),
                          text: "Project",
                        ),
                        Tab(icon: Text("23"), text: "Courses"),
                        Tab(icon: Text("23"), text: "Following"),
                      ],
                      controller: _tabController,
                      //    indicatorSize: TabBarIndicatorSize.tab,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.06,
                    right: MediaQuery.of(context).size.width * 0.06,
                    bottom: MediaQuery.of(context).size.height * 0.03),
                child: SizedBox(
                  child: TabBarView(
                    //      physics: const NeverScrollableScrollPhysics(),
                    controller: _tabController,
                    children: [
                      MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                            ),
                            itemCount: 6,
                            itemBuilder: (BuildContext context, int index) {
                              return Card(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color:
                                          Theme.of(context).colorScheme.outline,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12)),
                                  ),
                                  color: Colors.amber,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/images/Paul-Wilson.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ));
                            }),
                      ),
                      MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: ListView.builder(
                            itemCount: 8,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).size.height * 0.02,
                                  //     horizontal: MediaQuery.of(context).size.width*0.025
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 120,
                                      width: 100,
                                      color: Colors.black,
                                      child: Image.asset(
                                          'assets/images/tree.jpg',
                                          fit: BoxFit.cover),
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.025),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.02),
                                          Text(
                                            "Samule Doe",
                                            style: GoogleFonts.ibmPlexSans(
                                                fontSize: 16,
                                                color: const Color(0xff939495),
                                                fontWeight: FontWeight.w400),
                                          ),
                                          SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.01),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.person_2_outlined,
                                                color: Color(0xff939495),
                                              ),
                                              SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.01),
                                              Text(
                                                "4k student",
                                                style: GoogleFonts.ibmPlexSans(
                                                    fontSize: 16,
                                                    color:
                                                        const Color(0xff939495),
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.05),
                                              const Icon(
                                                Icons.star,
                                                color: Color(0xff3787ff),
                                                size: 20,
                                              ),
                                              SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.02),
                                              Text(
                                                "4.7",
                                                style: GoogleFonts.ibmPlexSans(
                                                    fontSize: 16,
                                                    color:
                                                        const Color(0xff939495),
                                                    fontWeight:
                                                        FontWeight.w400),
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
                      MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: ListView.builder(
                          itemCount: 8,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const CircleAvatar(
                                        radius: 26,
                                        backgroundImage: AssetImage(
                                            'assets/images/profile-pic.jpg'),
                                      ),
                                      SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.025),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Sammuel jonass",
                                            style: GoogleFonts.ibmPlexSans(
                                                fontSize: 18,
                                                color: Colors.black),
                                          ),
                                          Text(
                                            "@jdoe",
                                            style: GoogleFonts.ibmPlexSans(
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: const Color(0xffffffff)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(13),
                                      child: Text(
                                        "Follow",
                                        style: GoogleFonts.ibmPlexSans(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ],
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
    );
  }
}
