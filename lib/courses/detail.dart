import 'dart:developer';

import 'package:e_learning_app/courses/Poster-screen.dart';
import 'package:e_learning_app/courses/comment.dart';
import 'package:e_learning_app/courses/project-data.dart';
import 'package:e_learning_app/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:video_player/video_player.dart';

class CourseDetailPage extends StatefulWidget {
  const CourseDetailPage({super.key});

  @override
  State<CourseDetailPage> createState() => _CourseDetailPageState();
}

class _CourseDetailPageState extends State<CourseDetailPage>
    with TickerProviderStateMixin {
  late TabController tabController;
  // ignore: unused_field
  int _currentIndex = 0;
  @override
  void initState() {
    tabController = TabController(vsync: this, length: 2);
    tabController.addListener(_tabSelect);
    controller = VideoPlayerController.network(dataSource)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
    super.initState();
  }

  void _tabSelect() {
    log("Tab index is ${tabController.index}");
    setState(() {
      _currentIndex = tabController.index;
    });
  }

  String dataSource =
      "https://storage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";
  late VideoPlayerController controller;
  bool _isPlaying = false;

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

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
              "Details",
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
                  Icons.bookmark_border_rounded,
                  color: Colors.black54,
                  size: 20,
                ),
              )
            ]),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                    child: Column(children: [
                  controller.value.isInitialized
                      ? Stack(
                          children: [
                            AspectRatio(
                              aspectRatio: controller.value.aspectRatio,
                              child: VideoPlayer(controller),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                color: Colors.black.withOpacity(0.5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        _isPlaying
                                            ? Icons.pause
                                            : Icons.play_arrow,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _isPlaying = !_isPlaying;
                                          _isPlaying
                                              ? controller.play()
                                              : controller.pause();
                                        });
                                      },
                                    ),
                                    Text(
                                      '${controller.value.position.inMinutes}:${(controller.value.position.inSeconds % 60).toString().padLeft(2, '0')} / ${controller.value.duration.inMinutes}:${(controller.value.duration.inSeconds % 60).toString().padLeft(2, '0')}',
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      : const Center(
                          child: CircularProgressIndicator(),
                        ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 16),
                        Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xff4873a6).withOpacity(0.7),
                          ),
                          child: const Center(
                              child: ButtonText(
                            text: 'HOT',
                            color: Colors.white,
                          )),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(
                                  'assets/images/profile_picture.jpeg'),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Anny Morriarty",
                                    style: GoogleFonts.ibmPlexSans(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold)),
                                const ButtonText(
                                    text: 'Student', color: Colors.black45)
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const BigText(
                          text: "Comic drawing essential for everyone!",
                          color: Colors.black,
                        ),
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
                                const SizedBox(
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
                                      color: Colors.black54,
                                    ),
                                    const SizedBox(width: 7),
                                    Text("12 Lessons",
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 12)),
                                  ],
                                ),
                                const SizedBox(
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
                        ReadMoreText(
                          "These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors",
                          trimLines: 3,
                          trimLength: 100,
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.7),
                              height: 1.3,
                              wordSpacing: 2),
                          colorClickableText: Colors.black,
                          trimMode: TrimMode.Length,
                          trimCollapsedText: 'Read more',
                          moreStyle: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          trimExpandedText: '...Show Less',
                          lessStyle: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                  TabBar(
                    indicatorWeight: 1,
                    indicatorPadding: const EdgeInsets.only(bottom: 4),
                    indicatorColor: const Color(0xff4873a6).withOpacity(0.7),
                    controller: tabController,
                    labelStyle: GoogleFonts.ibmPlexSans(
                        fontSize: 16.0, fontWeight: FontWeight.w600),
                    onTap: (value) {},
                    labelColor: Colors.black,
                    unselectedLabelColor:
                        const Color(0xff4873a6).withOpacity(0.7),
                    tabs: const [
                      Tab(
                        text: 'Overview',
                      ),
                      Tab(
                        text: 'Completed',
                      ),
                    ],
                  ),
                  _getTabAtIndex(tabController.index),
                ])),
              ),
            ],
          ),
        ));
  }

  Widget _getTabAtIndex(int index) {
    var list = [
      SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Introduction",
                style: GoogleFonts.ibmPlexSans(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              ReadMoreText(
                'The Flutter framework builds its layout via the composition of widgets, everything that you construct programmatically is a widget and these are compiled together to create the user interface. ',
                trimLines: 2,
                trimLength: 80,
                style: TextStyle(color: Colors.black.withOpacity(0.7)),
                colorClickableText: Colors.black,
                trimMode: TrimMode.Length,
                trimCollapsedText: 'Read more',
                moreStyle: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
                trimExpandedText: '...Show Less',
                lessStyle: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF4873A6).withOpacity(0.7),
                ),
                child: const Center(
                    child: ButtonText(text: 'See more', color: Colors.white)),
              ),
              const SizedBox(height: 30),
              Text(
                "Feedback",
                style: GoogleFonts.ibmPlexSans(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xff4873a6).withOpacity(0.7)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                size: 22,
                                color: const Color(0xff4873a6).withOpacity(0.7),
                              ),
                              const SizedBox(width: 08),
                              Text(
                                "4.7",
                                style: GoogleFonts.ibmPlexSans(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          "Reviews",
                          style: GoogleFonts.ibmPlexSans(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xff4873a6).withOpacity(0.7)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person_outline,
                                size: 22,
                                color: const Color(0xff4873a6).withOpacity(0.7),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                "753",
                                style: GoogleFonts.ibmPlexSans(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          "Students",
                          style: GoogleFonts.ibmPlexSans(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 20,
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
                                  const ButtonText(
                                      text: "@mouni", color: Colors.black),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    "11 min ago",
                                    style: GoogleFonts.ibmPlexSans(
                                        fontSize: 12,
                                        color: Colors.black45,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          ReadMoreText(
                            'The Flutter framework builds its layout via the composition of widgets, everything that you construct programmatically is a widget and these are compiled together to create the user interface. ',
                            trimLines: 2,
                            trimLength: 80,
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.7)),
                            colorClickableText: Colors.black,
                            trimMode: TrimMode.Length,
                            trimCollapsedText: 'Read more',
                            moreStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            trimExpandedText: '...Show Less',
                            lessStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    );
                  }),
              const SizedBox(height: 30),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF4873A6).withOpacity(0.7),
                ),
                child: const Center(
                    child: ButtonText(text: 'Load more', color: Colors.white)),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Project by student",
                    style: GoogleFonts.ibmPlexSans(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProjectInfo()));
                    },
                    child: Text(
                      "Add projet",
                      style: GoogleFonts.ibmPlexSans(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              SizedBox(
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const PosterScreen()));
                          },
                          child: Card(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Theme.of(context).colorScheme.outline,
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
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
              ),
              const SizedBox(height: 30),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF4873A6).withOpacity(0.7),
                ),
                child: const Center(
                    child: ButtonText(text: 'Load more', color: Colors.white)),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: '5',
                            style: GoogleFonts.ibmPlexSans(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                        TextSpan(
                            text: '  Comments',
                            style: GoogleFonts.ibmPlexSans(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CommentScreen()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFF4873A6).withOpacity(0.7),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Center(
                            child: Text(
                          "Add comment",
                          style: GoogleFonts.ibmPlexSans(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        )),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              //  backgroundColor: Colors.black,
                              backgroundImage:
                                  AssetImage('assets/images/profile-pic.jpg'),
                            ),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.03),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ButtonText(
                                    text: "@mouni", color: Colors.black),
                                const SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "11 min ago",
                                      style:
                                          GoogleFonts.ibmPlexSans(fontSize: 12),
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03),
                                    const CircleAvatar(radius: 1),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03),
                                    Text(
                                      "Student",
                                      style:
                                          GoogleFonts.ibmPlexSans(fontSize: 12),
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
                              left: MediaQuery.of(context).size.width * 0.16,
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
                                  SmallText(
                                    text: "Liked",
                                    color: const Color(0xff4873a6)
                                        .withOpacity(0.7),
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.05),
                                  Text(
                                    "Reply",
                                    style:
                                        GoogleFonts.ibmPlexSans(fontSize: 10),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.thumb_up_off_alt_outlined,
                                    size: 15,
                                    color: const Color(0xff4873a6)
                                        .withOpacity(0.7),
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.02),
                                  Text(
                                    "21",
                                    style:
                                        GoogleFonts.ibmPlexSans(fontSize: 10),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
      // Second ITEM of tabbarview
      SizedBox(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.02,
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 80,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/images/girl-images-4.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.025),
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Adobe illustrator for all beginner artist",
                                    softWrap: true,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.ibmPlexSans(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.02),
                                  Text(
                                    "Lesson 1",
                                    style: GoogleFonts.ibmPlexSans(
                                        fontSize: 14,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                        ReadMoreText(
                          'The Flutter framework builds its layout via the composition of widgets, everything that you construct programmatically is a widget and these are compiled together to create the user interface. ',
                          trimLines: 2,
                          trimLength: 80,
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.7)),
                          colorClickableText: Colors.black,
                          trimMode: TrimMode.Length,
                          trimCollapsedText: 'Read more',
                          moreStyle: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          trimExpandedText: '...Show Less',
                          lessStyle: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  );
                }),
            SizedBox(height: MediaQuery.of(context).size.height * 0.06),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Resources for download",
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.03,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFF4873A6).withOpacity(0.7),
                              ),
                              child: Center(
                                  child: Text(
                                ".img",
                                style: GoogleFonts.ibmPlexSans(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ButtonText(
                                  text: "practice class sketches",
                                  color: Colors.black,
                                ),
                                const SizedBox(height: 2),
                                Row(
                                  children: [
                                    Text(
                                      ".img",
                                      style: GoogleFonts.ibmPlexSans(
                                          color: Colors.black.withOpacity(0.7)),
                                    ),
                                    const SizedBox(width: 20),
                                    RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text: "4",
                                          style: GoogleFonts.ibmPlexSans(
                                              color: Colors.black
                                                  .withOpacity(0.7)),
                                        ),
                                        TextSpan(
                                          text: "Mb",
                                          style: GoogleFonts.ibmPlexSans(
                                              color: Colors.black
                                                  .withOpacity(0.7)),
                                        ),
                                      ]),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        Image.asset(
                          'assets/icons/download-cloud.png',
                          width: 26,
                          color: const Color(0xFF4873A6).withOpacity(0.7),
                        )
                      ],
                    ),
                  );
                })
          ],
        ),
      )), // SECOND ITEM
    ];
    return list[index];
  }
}
