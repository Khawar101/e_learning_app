// ignore: file_names
import 'package:e_learning_app/Home-Screens/home_buttom_bar.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class EditInfo extends StatefulWidget {
  const EditInfo({super.key});

  @override
  State<EditInfo> createState() => _EditInfoState();
}

class _EditInfoState extends State<EditInfo> {
  bool visibleCheck = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe4f1f8),
      body: SafeArea(
        // ignore: avoid_unnecessary_containers
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.425,
                width: double.infinity,
                color: const Color(0xffffffff),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.06,
                        vertical: MediaQuery.of(context).size.width * 0.038,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Profile",
                            style: GoogleFonts.ibmPlexSans(
                                fontSize: 25, color: const Color(0xff0a0706)),
                          ),
                          const Icon(Icons.settings_outlined),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        const CircleAvatar(
                          radius: 85,
                          backgroundImage:
                              AssetImage('assets/images/download.jpeg'),

                          //    backgroundColor: Colors.black,
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.width * 0.15,
                          left: MediaQuery.of(context).size.width * 0.16,
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage('assets/icons/gallery_icon.png'),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: Text("Rakibull hassan",
                          style: GoogleFonts.ibmPlexSans(
                            color: const Color(0xff211e1d),
                            fontSize: 24,
                          )),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.24),
                      child: const StepProgressIndicator(
                        totalSteps: 100,
                        currentStep: 60,
                        size: 8,
                        padding: 0,
                        selectedColor: Color(0xff3787ff),
                        unselectedColor: Color(0xff767372),
                        roundedEdges: Radius.circular(10),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Text(
                      "60% complete your profile",
                      style: GoogleFonts.ibmPlexSans(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.width * 0.045,
                    horizontal: MediaQuery.of(context).size.height * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Profile Information",
                      style: GoogleFonts.ibmPlexSans(
                          fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 25),
                    Text(
                      "Email Address",
                      style: GoogleFonts.ibmPlexSans(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: TextField(
                              //  controller: email,
                              decoration: InputDecoration(
                                hintText: "E-Mail",
                                hintStyle:
                                    TextStyle(color: Colors.grey, fontSize: 18),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Password",
                      style: GoogleFonts.ibmPlexSans(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: TextField(
                              obscureText: visibleCheck,
                              //  controller: password,
                              decoration: const InputDecoration(
                                hintText: "Password",
                                hintStyle:
                                    TextStyle(color: Colors.grey, fontSize: 18),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              visibleCheck = !visibleCheck;
                              setState(() {});
                            },
                            child: Icon(
                              visibleCheck == true
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "First Name",
                      style: GoogleFonts.ibmPlexSans(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: TextField(
                              //   obscureText: visibleCheck,
                              //  controller: email,
                              decoration: InputDecoration(
                                hintText: "First Name",
                                hintStyle:
                                    TextStyle(color: Colors.grey, fontSize: 18),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Last Name",
                      style: GoogleFonts.ibmPlexSans(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: TextField(
                              //    obscureText: visibleCheck,
                              //  controller: email,
                              decoration: InputDecoration(
                                hintText: "Last Name",
                                hintStyle:
                                    TextStyle(color: Colors.grey, fontSize: 18),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.12,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xff3787ff),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.06),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                    color: const Color(0xffe4f1f8),
                    borderRadius: BorderRadius.circular(40)),
                child: Center(
                  child: Text(
                    "cancel",
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(40)),
                child: Center(
                  child: Text(
                    "Save",
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
