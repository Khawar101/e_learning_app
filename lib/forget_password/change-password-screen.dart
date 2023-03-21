// ignore: file_names
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  bool visibleCheck = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffE5E5E5),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.07),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.25),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.12,
                    width: MediaQuery.of(context).size.width * 0.25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 2, color: Colors.black)),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.1,
                      decoration: BoxDecoration(
                          color: const Color(0xff9fc7fb),
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset('assets/icons/lock-icon.png')),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),

            Text(
              'Change Password',
              style: GoogleFonts.ibmPlexSans(
                fontSize: 24,
              ),
            ), //
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.015,
                  bottom: MediaQuery.of(context).size.height * 0.025),
              child: const Text(
                'Your password length consists of\n6-characterrs',
                textAlign: TextAlign.center,
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: 55,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: const Color(0xff3787ff),
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
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
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      obscureText: visibleCheck,
                      //  controller: password,
                      decoration: const InputDecoration(
                          hintText: "New Password",
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 16),
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: 55,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: const Color(0xff3787ff),
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
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
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      obscureText: visibleCheck,
                      //  controller: password,
                      decoration: const InputDecoration(
                          hintText: "Confirm Password",
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 16),
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.035,
            ),

            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff3787ff),
                  borderRadius: BorderRadius.circular(30),
                ),
                height: MediaQuery.of(context).size.height * 0.067,
                width: MediaQuery.of(context).size.width * 1,
                child: Center(
                    child: Text(
                  'Save Password',
                  style: GoogleFonts.ibmPlexSans(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
