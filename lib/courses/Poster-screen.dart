// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PosterScreen extends StatefulWidget {
  const PosterScreen({super.key});

  @override
  State<PosterScreen> createState() => _PosterScreenState();
}

class _PosterScreenState extends State<PosterScreen> {
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.arrow_back_ios, color: Colors.black),
                        Icon(Icons.share, color: Colors.black),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Text(
                      "Halloween poster",
                      style: GoogleFonts.ibmPlexSans(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/images/profile-pic.jpg'),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  style: GoogleFonts.ibmPlexSans(fontSize: 12),
                                ),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.03),
                                const CircleAvatar(radius: 1),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.03),
                                Text(
                                  "Student",
                                  style: GoogleFonts.ibmPlexSans(fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Text(
                      "Project associated with:",
                      style: GoogleFonts.ibmPlexSans(
                          fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Text(
                      "Comic drawing essential for eeryone!",
                      style: GoogleFonts.ibmPlexSans(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    Container(
                      height: 400,
                      width: double.infinity,
                      color: Colors.white,
                      child: Image.asset(
                        'assets/images/tree.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Text(
                      "In the body, we have ListView.builder with itemcount 5 and itemBuilder which will create a new widget again and again up to 5 times because we have itemCount=5. If we don’t use itemCount in ListView.builder then we will get infinite list items so it is recommended to use itemCount to avoid such mistakes. The itemBuilder returns ListTile which has leading, trailing and title. This ListTile will build again and again up to 5 times.",
                      style: GoogleFonts.ibmPlexSans(),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                    Text(
                      "In the body, we have ListView.builder with itemcountand . we will get infinite list items so it is recommended to use itemCount to avoid such mistakes. The itemBuilder returns List again up to 5 times.",
                      style: GoogleFonts.ibmPlexSans(),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                    const Divider(
                      thickness: 2,
                      color: Colors.black,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.thumb_up_off_alt_outlined,
                          size: 24,
                          color: Color(0xff3787ff),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          "21",
                          style: GoogleFonts.ibmPlexSans(
                              fontSize: 14, color: const Color(0xff3787ff)),
                        ),
                        const SizedBox(width: 40),
                        const Icon(
                          Icons.remove_red_eye_outlined,
                          size: 24,
                          color: Color(0xff3787ff),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          "150",
                          style: GoogleFonts.ibmPlexSans(
                              fontSize: 13, color: const Color(0xff3787ff)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
