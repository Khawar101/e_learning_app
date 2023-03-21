// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool light0 = true;
  bool light1 = true;

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      // Thumb icon when the switch is selected.
      if (states.contains(MaterialState.selected)) {
        return const Icon(
          Icons.check,
        );
      }
      return const Icon(Icons.close);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe4f1f8),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06,
                vertical: MediaQuery.of(context).size.height * 0.03,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 18,
                  ),
                  Text(
                    "Setting",
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Save",
                    style: GoogleFonts.ibmPlexSans(
                        color: const Color(0xff3787ff),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.07),
                  child: Column(
                    children: [
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: const Color(0xff3787ff),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.03),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Connect to Facebook",
                                style: GoogleFonts.ibmPlexSans(
                                    color: const Color(0xffffffff),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              Switch(
                                thumbIcon: thumbIcon,
                                activeColor: Colors.white,
                                activeTrackColor: Colors.black,
                                inactiveThumbColor: Colors.black,
                                inactiveTrackColor: Colors.white,
                                splashRadius: 5000,
                                value: light0,
                                onChanged: (bool value) {
                                  setState(() {
                                    light0 = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: const Color(0xff3787ff),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.03),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "R",
                                    style: GoogleFonts.ibmPlexSans(
                                        color: const Color(0xffffffff),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.04),
                                  Text(
                                    "Beta",
                                    style: GoogleFonts.ibmPlexSans(
                                        color: const Color(0xffffffff),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: Color(0xffffffff),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: const Color(0xff3787ff),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.03),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.notifications_active,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.04),
                                  Text(
                                    "Notification",
                                    style: GoogleFonts.ibmPlexSans(
                                        color: const Color(0xffffffff),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: Color(0xffffffff),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: const Color(0xff3787ff),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.03),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.surround_sound_sharp,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.04),
                                  Text(
                                    "Learning & sound setting",
                                    style: GoogleFonts.ibmPlexSans(
                                        color: const Color(0xffffffff),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: Color(0xffffffff),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: const Color(0xff3787ff),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.03),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.dark_mode,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.04),
                                  Text(
                                    "Dark Mode",
                                    style: GoogleFonts.ibmPlexSans(
                                        color: const Color(0xffffffff),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Switch(
                                thumbIcon: thumbIcon,
                                activeColor: Colors.white,
                                activeTrackColor: Colors.black,
                                inactiveThumbColor: Colors.black,
                                inactiveTrackColor: Colors.white,
                                splashRadius: 5000,
                                value: light1,
                                onChanged: (bool value) {
                                  setState(() {
                                    light1 = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: const Color(0xff3787ff),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.03),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.question_mark,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.04),
                                  Text(
                                    "Help",
                                    style: GoogleFonts.ibmPlexSans(
                                        color: const Color(0xffffffff),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: Color(0xffffffff),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: const Color(0xff3787ff),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.03),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.logout,
                                size: 18,
                                color: Colors.white,
                              ),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.04),
                              Text(
                                "Log out",
                                style: GoogleFonts.ibmPlexSans(
                                    color: const Color(0xffffffff),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: const Color(0xff3787ff),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.03),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Privacy Policy",
                                style: GoogleFonts.ibmPlexSans(
                                    color: const Color(0xffffffff),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: Color(0xffffffff),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: const Color(0xff3787ff),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.03),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Terms of Use",
                                style: GoogleFonts.ibmPlexSans(
                                    color: const Color(0xffffffff),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: Color(0xffffffff),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04),
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
