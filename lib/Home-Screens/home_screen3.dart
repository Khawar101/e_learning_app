// ignore: file_names
import 'package:e_learning_app/Home-Screens/home_screen4.dart';
import 'package:e_learning_app/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class HomeScreen3 extends StatefulWidget {
  const HomeScreen3({super.key});

  @override
  State<HomeScreen3> createState() => _HomeScreen3State();
}

class _HomeScreen3State extends State<HomeScreen3> {
 

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
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Container(
              height: 30,
              width: 110,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff4873a6).withOpacity(0.2),
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.language,
                    size: 18,
                    color: const Color(0xff4873a6).withOpacity(0.7),
                  ),
                  const SizedBox(width: 3),
                  Text(
                    "English",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 15,
                        color: const Color(0xff4873a6).withOpacity(0.7),
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: const Color(0xff4873a6).withOpacity(0.7),
                    size: 24,
                  )
                ],
              ),
            ),
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
      // backgroundColor: const Color(0xffe4f1f8),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
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
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.04),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                          color: const Color(0xff4873a6).withOpacity(0.2),
                        )),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.025,
                          vertical: MediaQuery.of(context).size.height * 0.025),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.play_circle_outlined,
                                size: 26,
                              ),
                              const SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const ButtonText(
                                      text: 'Welcome to the Course',
                                      color: Colors.black),
                                  const SizedBox(height: 4),
                                  Text(
                                    '56 Minutes',
                                    style: GoogleFonts.ibmPlexSans(
                                        fontSize: 12,
                                        color: Colors.black26,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          SizedBox(
                            //  height: 400,
                            child: ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 50,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 22,
                                              width: 22,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black,
                                                      width: 1),
                                                  shape: BoxShape.circle),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(3.0),
                                                child: Image.asset(
                                                  'assets/icons/lock-24.png',
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 16),
                                            Text(
                                              'what is marketing?',
                                              style: GoogleFonts.ibmPlexSans(
                                                  fontSize: 12,
                                                  color: Colors.black54,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '56 Minutes',
                                              style: GoogleFonts.ibmPlexSans(
                                                  fontSize: 12,
                                                  color: Colors.black26,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.03),
                          Container(
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                               color: const Color(0xFF4873A6).withOpacity(0.7),
                              ),
                              child: const Center(
                                  child: ButtonText(
                                      text: 'See all Lessons',
                                      color: Colors.white))),
                        ],
                      ),
                    ),
                  ),
                     SizedBox(height: MediaQuery.of(context).size.height * 0.04),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const HomeScreen4())));
                    },
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF4873A6).withOpacity(0.7),
                      ),
                      child: const Center(
                          child: ButtonText(
                              text: 'Unlock All Videos', color: Colors.white)),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),

            //newone
          ],
        ),
      ),
    );
  }
}
