import 'dart:developer';

import 'package:e_learning_app/Home-Screens/drawer_page.dart';
import 'package:e_learning_app/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentProfile extends StatefulWidget {
  const StudentProfile({super.key});

  @override
  State<StudentProfile> createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile>
    with TickerProviderStateMixin {
  late TabController tabController;
  // ignore: unused_field
  int _currentIndex = 0;
  @override
  void initState() {
    tabController = TabController(vsync: this, length: 3);
    tabController.addListener(_tabSelect);

    super.initState();
  }

  void _tabSelect() {
    log("Tab index is ${tabController.index}");
    setState(() {
      _currentIndex = tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: const DrawerHeaderPage(),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
             leading: Builder(
    builder: (BuildContext context) {
      return IconButton(
        icon: const  Icon(
               Icons.vertical_distribute_sharp,
               color: Colors.black54,
               size: 18,
             ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      );
    },
  ),
          title: Text(
            "Student Info",
            textAlign: TextAlign.center,
            style: GoogleFonts.ibmPlexSans(
                fontSize: 18,
                color: const Color(0xff4873a6).withOpacity(0.7),
                fontWeight: FontWeight.w600),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
          child: Column(
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      AssetImage('assets/images/profile_picture.jpeg'),
                ),
              ),
              const SizedBox(height: 4),
              const BigText(text: "@annymori", color: Colors.black),
              const SizedBox(height: 4),
              Text(
                "Professinol comic book artist\nand full time art teacher",
                textAlign: TextAlign.center,
                style: GoogleFonts.ibmPlexSans(
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: const Color(0xff4873a6).withOpacity(0.7),
                              width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                          child: ButtonText(
                              text: "teacher", color: Colors.black))),
                  const SizedBox(width: 10),
                  Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                        color: const Color(0xff4873a6).withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: ButtonText(text: "Follow", color: Colors.white)),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: const Color(0xff4873a6).withOpacity(0.7),
                            width: 1)),
                    child: Center(
                      child: Image.asset(
                        'assets/icons/icons8-fb-24.png',
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.09),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: const Color(0xff4873a6).withOpacity(0.7),
                            width: 1)),
                    child: Center(
                      child: Image.asset(
                        'assets/icons/instagram-48.png',
                        width: 24,
                      ),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.09),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: const Color(0xff4873a6).withOpacity(0.7),
                            width: 1)),
                    child: Center(
                      child: Image.asset(
                        'assets/icons/icons8-twitter-48.png',
                        width: 24,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              TabBar(
                indicatorWeight: 1,
                indicatorPadding: const EdgeInsets.only(bottom: 4),
                indicatorColor: const Color(0xff4873a6).withOpacity(0.7),
                controller: tabController,
                labelStyle: GoogleFonts.ibmPlexSans(
                    fontSize: 16.0, fontWeight: FontWeight.w600),
                onTap: (value) {},
                labelColor: Colors.black,
                unselectedLabelColor: const Color(0xff4873a6).withOpacity(0.7),
                tabs: const [
                  Tab(
                    icon: Text("23"),
                    text: "Project",
                  ),
                  Tab(icon: Text("23"), text: "Courses"),
                  Tab(icon: Text("23"), text: "Following"),
                ],
              ),
              _getTabAtIndex(tabController.index),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getTabAtIndex(int index) {
    var list = [
      MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: 15,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.02, top: 12),
                child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/Paul-Wilson.jpg',
                        fit: BoxFit.cover,
                      ),
                    )),
              );
            }),
      ),
      //2nd tabbar
      Column(
        children: [
          MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 8,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.02,
                        top: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/images/tree.jpg',
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.025),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Adobe illustrator for all beginner artist",
                                softWrap: true,
                                maxLines: 3,
                                style: GoogleFonts.ibmPlexSans(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.009),
                              const ButtonText(
                                  text: "Samule Doe", color: Colors.black45),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.009),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.person_2_outlined,
                                    color: Colors.black45,
                                    size: 15,
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.01),
                                  const SmallText(
                                      text: "4k student",
                                      color: Colors.black45),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.05),
                                  Icon(
                                    Icons.star,
                                    color: const Color(0xff4873a6)
                                        .withOpacity(0.7),
                                    size: 15,
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.02),
                                  const SmallText(
                                      text: "4.7", color: Colors.black45),
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

      //3rd tabar

      Column(
        children: [
          MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: ListView.builder(
              itemCount: 8,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.02,
                      top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage('assets/images/profile-pic.jpg'),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.025),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ButtonText(
                                  text: "Sammuel jonass", color: Colors.black),
                              SmallText(text: "@jdoe", color: Colors.black45)
                            ],
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff4873a6).withOpacity(0.7),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 6),
                            child:
                                SmallText(text: "Follow", color: Colors.white)),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ];
    return list[index];
  }
}
