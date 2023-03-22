// ignore: file_names
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class EnhanceScreen extends StatefulWidget {
  const EnhanceScreen({super.key});

  @override
  State<EnhanceScreen> createState() => _EnhanceScreenState();
}

class _EnhanceScreenState extends State<EnhanceScreen> {
  bool isChecked = false;
  bool isChecked1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe5f1f8),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Center(
                child: Text(
              "Enhance your learning \nexperience with us",
              textAlign: TextAlign.center,
              style: GoogleFonts.ibmPlexSans(
                  fontSize: 22, fontWeight: FontWeight.w600),
            )),
            SizedBox(height: MediaQuery.of(context).size.height * 0.025),
            Center(
                child: Text(
              "Choose your pain that works for \n you.Cancel it anything",
              textAlign: TextAlign.center,
              style: GoogleFonts.ibmPlexSans(fontSize: 11),
            )),
            SizedBox(height: MediaQuery.of(context).size.height * 0.07),
            Container(
              height: MediaQuery.of(context).size.height * 0.14,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Colors.blue,
                    activeColor: Colors.white,
                    side: const BorderSide(color: Colors.white),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "\$14.99 /Month",
                        style: GoogleFonts.ibmPlexSans(
                            color: const Color(0xffffffff),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        "Get 1 month free trial",
                        style: GoogleFonts.ibmPlexSans(
                            color: const Color(0xffffffff), fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Container(
              height: MediaQuery.of(context).size.height * 0.14,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Colors.blue,
                    activeColor: Colors.white,
                    side: const BorderSide(color: Colors.white),
                    value: isChecked1,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked1 = value!;
                      });
                    },
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "\$14.99 /Month",
                        style: GoogleFonts.ibmPlexSans(
                            color: const Color(0xffffffff),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        "Get 1 month free trial",
                        style: GoogleFonts.ibmPlexSans(
                            color: const Color(0xffffffff), fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
               height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.8,
                 decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text("Continue",
                style:GoogleFonts.ibmPlexSans(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600)
                ),
              ),
            ),
          SizedBox(height:   MediaQuery.of(context).size.height * 0.06)

          ],
        ),
      ),
    );
  }
}
