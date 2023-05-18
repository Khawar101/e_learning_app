// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:video_player/video_player.dart';

class HomeScreen3 extends StatefulWidget {
  const HomeScreen3({super.key});

  @override
  State<HomeScreen3> createState() => _HomeScreen3State();
}

class _HomeScreen3State extends State<HomeScreen3> {
  static List<String> itemsnames = [
    'Class Schedule',
    'Studying',
    'Saved',
    'Course details',
    'Lesson Content(50)',
    '120 Reviews'
  ];

  String dataSource =
      "https://storage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(dataSource)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
    //    controller!.play();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe4f1f8),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.04,
                        vertical: MediaQuery.of(context).size.height * 0.04),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.black,
                          size: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 2),
                            child: Row(children: [
                              const Icon(Icons.language,
                                  color: Colors.white, size: 13),
                              const SizedBox(width: 3),
                              Text(
                                'English',
                                style: GoogleFonts.ibmPlexSans(
                                    color: Colors.white, fontSize: 12),
                              ),
                              const SizedBox(width: 5),
                              const Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Colors.white,
                                size: 15,
                              ),
                            ]),
                          ),
                        ),
                        const Icon(
                          Icons.share_outlined,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    color: Colors.blue,
                    // decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(12),
                    //    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                          // padding: EdgeInsets.only(right: 3),
                          // This next line does the trick.
                          scrollDirection: Axis.horizontal,
                          itemCount: itemsnames.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: const Color(0xffe4f1f8),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Center(
                                      child: Text(
                                    itemsnames[index],
                                    style: GoogleFonts.ibmPlexSans(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  )),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                ],
              ),
            ),
            //video

            _controller.value.isInitialized
                ? Stack(
                    children: [
                      AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          color: Colors.black.withOpacity(0.5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: Icon(
                                  _isPlaying ? Icons.pause : Icons.play_arrow,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isPlaying = !_isPlaying;
                                    _isPlaying
                                        ? _controller.play()
                                        : _controller.pause();
                                  });
                                },
                              ),
                              Text(
                                '${_controller.value.position.inMinutes}:${(_controller.value.position.inSeconds % 60).toString().padLeft(2, '0')} / ${_controller.value.duration.inMinutes}:${(_controller.value.duration.inSeconds % 60).toString().padLeft(2, '0')}',
                                style: const TextStyle(color: Colors.white),
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

            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.04),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.025,
                              vertical:
                                  MediaQuery.of(context).size.height * 0.025),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.play_circle_outlined,
                                    size: 26,
                                  ),
                                  const SizedBox(width: 14),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Welcome to the Course',
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        '56 minutes',
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 335),
                                child: StepProgressIndicator(
                                  totalSteps: 1,
                                  fallbackLength: 30,
                                  size: 2,
                                  unselectedColor: Colors.black,
                                  direction: Axis.vertical,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 22,
                                    width: 22,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 2),
                                        shape: BoxShape.circle),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Image.asset(
                                        'assets/icons/lock-24.png',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 14),
                                  Text(
                                    'what is marketing?      56 Minutes',
                                    style: GoogleFonts.ibmPlexSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 335),
                                child: StepProgressIndicator(
                                  totalSteps: 1,
                                  fallbackLength: 20,
                                  size: 2,
                                  unselectedColor: Colors.black,
                                  direction: Axis.vertical,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 22,
                                    width: 22,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 2),
                                        shape: BoxShape.circle),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Image.asset(
                                        'assets/icons/lock-24.png',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 14),
                                  Text(
                                    'what is marketing?      56 Minutes',
                                    style: GoogleFonts.ibmPlexSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 335),
                                child: StepProgressIndicator(
                                  totalSteps: 1,
                                  fallbackLength: 20,
                                  size: 2,
                                  unselectedColor: Colors.black,
                                  direction: Axis.vertical,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 22,
                                    width: 22,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 2),
                                        shape: BoxShape.circle),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Image.asset(
                                        'assets/icons/lock-24.png',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 14),
                                  Text(
                                    'what is marketing?      56 Minutes',
                                    style: GoogleFonts.ibmPlexSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 335),
                                child: StepProgressIndicator(
                                  totalSteps: 1,
                                  fallbackLength: 20,
                                  size: 2,
                                  unselectedColor: Colors.black,
                                  direction: Axis.vertical,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 22,
                                    width: 22,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 2),
                                        shape: BoxShape.circle),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Image.asset(
                                        'assets/icons/lock-24.png',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 14),
                                  Text(
                                    'what is marketing?      56 Minutes',
                                    style: GoogleFonts.ibmPlexSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 335),
                                child: StepProgressIndicator(
                                  totalSteps: 1,
                                  fallbackLength: 20,
                                  size: 2,
                                  unselectedColor: Colors.black,
                                  direction: Axis.vertical,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 22,
                                    width: 22,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 2),
                                        shape: BoxShape.circle),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Image.asset(
                                        'assets/icons/lock-24.png',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 14),
                                  Text(
                                    'what is marketing?      56 Minutes',
                                    style: GoogleFonts.ibmPlexSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 335),
                                child: StepProgressIndicator(
                                  totalSteps: 1,
                                  fallbackLength: 20,
                                  size: 2,
                                  unselectedColor: Colors.black,
                                  direction: Axis.vertical,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 22,
                                    width: 22,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 2),
                                        shape: BoxShape.circle),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Image.asset(
                                        'assets/icons/lock-24.png',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 14),
                                  Text(
                                    'what is marketing?      56 Minutes',
                                    style: GoogleFonts.ibmPlexSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.03),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.blue,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 4),
                                  child: Text(
                                    'See all Lessons',
                                    style: GoogleFonts.ibmPlexSans(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue),
                        child: Center(
                            child: Text(
                          'Unlock All Videos',
                          style: GoogleFonts.ibmPlexSans(
                              color: Colors.white, fontSize: 17),
                        )),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),

            //newone
          ],
        ),
      ),
    );
  }
}
