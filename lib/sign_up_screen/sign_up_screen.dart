
import 'package:e_learning_app/sign_up_screen/verify-screen.dart';
import 'package:e_learning_app/utils/app_utils.dart';
import 'package:e_learning_app/utils/custom_text_form_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class SignUpPhoneScreen extends StatefulWidget {
  const SignUpPhoneScreen({super.key});

  @override
  State<SignUpPhoneScreen> createState() => _SignUpPhoneScreenState();
}

class _SignUpPhoneScreenState extends State<SignUpPhoneScreen> {
  bool visibleCheck = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xffe5f1f8),
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              "Sign In",
              textAlign: TextAlign.center,
              style: GoogleFonts.ibmPlexSans(
                  fontSize: 18,
                  color:Colors.black,
                  fontWeight: FontWeight.w600),
            ),
          ),
          centerTitle: true,
        ),
    //    backgroundColor: const Color(0xffe5f1f8),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const BigText(
                  text: "Join Brainly Community",
                  color: Colors.black,
                ),
                const SizedBox(height: 6),
                const BigSubText(
                  text: "Subscribe quickly with us",
                ),

                const SizedBox(height: 20),
                // ignore: prefer_const_constructors
                Stack(
                  children: [
                    const Center(
                      child: CircleAvatar(
                        radius: 65,
                        backgroundImage:
                            AssetImage('assets/images/download.jpeg'),
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.transparent,
                      ),
                    ),
                    Center(
                      child: CircleAvatar(
                        radius: 75,
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.transparent,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 40,
                            width: 55,
                            decoration: BoxDecoration(
                              color: const Color(0xff4873a6),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Icon(Icons.edit_outlined,
                                color: Color(0xffffffff), size: 30),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.09),
                Column(
                  children: [
                    CustomTextFormField(
                      hintText: 'Name',
                    ),
                    const SizedBox(height: 12),
                    CustomTextFormField(
                      hintText: 'E-Mail',
                    ),
                    const SizedBox(height: 12),
                    CustomTextFormField(
                      hintText: 'Password',
                      isObscureText: visibleCheck,
                      suffix: GestureDetector(
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
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.09),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const VerifyScreen()),);
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xff4873a6),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                            child: ButtonText(
                          text: 'Sign up',
                          color: Colors.white,
                        )),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(children: [
                      const Expanded(
                          child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 2,
                      )),
                      Text(
                        "OR",
                        style: GoogleFonts.ibmPlexSans(fontSize: 12),
                      ),
                      const Expanded(
                          child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 2,
                      )),
                    ]),
                    const SizedBox(height: 20),
                    const BigSubText(
                      text: "We Never share anything on your behalf",
                    ),
                    const SizedBox(height: 27),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                              color: Color(0xff868686), shape: BoxShape.circle),
                          child: Image.asset('assets/icons/apple-logo.png'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                              color: Color(0xff5085fc), shape: BoxShape.circle),
                          child: Image.asset('assets/icons/google-logo.png'),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                              color: Color(0xff5085fc), shape: BoxShape.circle),
                          child: Center(
                              child: Image.asset(
                            'assets/icons/icons8-fb-24.png',
                          )),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
