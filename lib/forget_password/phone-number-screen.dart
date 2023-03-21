import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPhoneScreen extends StatefulWidget {
  const SignInPhoneScreen({super.key});

  @override
  State<SignInPhoneScreen> createState() => _SignInPhoneScreenState();
}

class _SignInPhoneScreenState extends State<SignInPhoneScreen> {
  TextEditingController phoneController = TextEditingController();

  void sendOtp() async {
    // ignore: prefer_interpolation_to_compose_strings
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffE5E5E5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25),
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
            'Forgot Password',
            style: GoogleFonts.ibmPlexSans(
              fontSize: 24,
            ),
          ), //
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.015,
                bottom: MediaQuery.of(context).size.height * 0.025),
            child: const Text(
              'A handful of model sentence structure',
              textAlign: TextAlign.center,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 10),
            child: TextField(
              //  controller: phoneController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone_forwarded),
                border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xff3787ff), width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xff3787ff), width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                hintText: 'Phone Number',
              ),
              keyboardType: TextInputType.phone,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),

          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff3787ff),
                borderRadius: BorderRadius.circular(30),
              ),
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.85,
              child: Center(
                  child: Text(
                'Continue',
                style: GoogleFonts.ibmPlexSans(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              )),
            ),
          ),
          Padding(
              padding:
                  EdgeInsets.all(MediaQuery.of(context).size.height * 0.020),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'We Sent a',
                  style: GoogleFonts.ibmPlexSans(
                    color: Colors.black,
                  ),
                  children: const [
                    TextSpan(
                      text: ' Verification code ',
                      style: TextStyle(color: Colors.blue),
                    ),
                    TextSpan(text: 'to your\n phone number.'),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
