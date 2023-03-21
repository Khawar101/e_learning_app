import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class PasswordChanged extends StatefulWidget {
  const PasswordChanged({super.key});

  @override
  State<PasswordChanged> createState() => _PasswordChangedState();
}

class _PasswordChangedState extends State<PasswordChanged> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: Column(
        children: [
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 220),
                child:
                    Image.asset('assets/icons/icons8-popper-confetti-96.png'),
              )),
          SizedBox(height: MediaQuery.of(context).size.height * 0.085),
          Text(
            textAlign: TextAlign.center,
            'Password Changed \n Successfully!',
            style: GoogleFonts.ibmPlexSans(fontSize: 24, color: Colors.black),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.020),
          const Text(
            textAlign: TextAlign.center,
            "If you are going to use a passage of Lorem \n lpusm.You need to be sure there isn't \n anything embarrassing.",
          ),
          const SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff5085fc),
                borderRadius: BorderRadius.circular(35),
              ),
              child: Center(
                child: Text("Sign in",
                    style: GoogleFonts.ibmPlexSans(
                      color: const Color(0xffd0e0fe),
                      fontSize: 18,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
