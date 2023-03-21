// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentSetting extends StatefulWidget {
  const StudentSetting({super.key});

  @override
  State<StudentSetting> createState() => _StudentSettingState();
}

class _StudentSettingState extends State<StudentSetting> {
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
      backgroundColor: const Color(0xffe5f1f8),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.06,
          vertical: MediaQuery.of(context).size.height * 0.03,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 18,
                  ),
                  Expanded(
                      child: Center(
                          child: Text(
                    "Setting",
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ))),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Text(
                "Membership",
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Free membership user",
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffa5a9ab)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "upgrade",
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              const Divider(
                thickness: 1,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              Text(
                "Account",
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Profile setting",
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffa5a9ab)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "manage",
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              const Divider(
                thickness: 1,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              Text(
                "Notifications",
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Personalized Notifications",
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffa5a9ab)),
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              const Divider(
                thickness: 1,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              Text(
                "Security",
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Password change",
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffa5a9ab)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "manage",
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              const Divider(
                thickness: 1,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Text(
                "Help & Support",
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "About us",
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffa5a9ab)),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 22,
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Terms & Conditions",
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffa5a9ab)),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 22,
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Privacy Policy",
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffa5a9ab)),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 22,
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: const Color(0xff3787ff),
                ),
                child: Center(
                    child: Text(
                  "Sign Out",
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            ],
          ),
        ),
      )),
    );
  }
}
