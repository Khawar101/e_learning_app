// ignore: file_names
import 'package:e_learning_app/forget_password/verify_otp.dart';
import 'package:e_learning_app/utils/app_utils.dart';
import 'package:e_learning_app/utils/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController phoneController = TextEditingController();

  void sendOtp() async {
    // ignore: prefer_interpolation_to_compose_strings
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffe4f1f8),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.14),
              Center(
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border:
                        Border.all(color: const Color(0xff4873a6), width: 1),
                  ),
                  child: Center(
                    child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: const Color(0xff4873a6),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Image.asset(
                          'assets/icons/lock-icon.png',
                        ))),
                  ),
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              const BigText(
                text: "Forgot Password",
                color: Colors.black,
              ),
              const SizedBox(height: 8),
              const BigSubText(
                text: "A handful of model sentence structure",
              ), //
              const SizedBox(height: 25),
              CustomTextFormField(
                hintText: 'Phone Number',
                textInputType: TextInputType.number,
                prefix: const Icon(
                  Icons.phone_forwarded,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 25),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EnterOtpScreen()),
                  );
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
                    text: 'Continue',
                    color: Colors.white,
                  )),
                ),
              ),
              const SizedBox(height: 30),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'We Sent a',
                  style: GoogleFonts.ibmPlexSans(
                      color: Colors.black, fontSize: 12),
                  children: const [
                    TextSpan(
                      text: ' Verification code ',
                      style: TextStyle(
                       color:  Color(0xff4873a6),
                      ),
                    ),
                    TextSpan(text: 'to your\n phone number.'),
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
