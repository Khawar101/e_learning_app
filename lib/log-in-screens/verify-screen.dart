// ignore: file_names
import 'package:e_learning_app/Home-Screens/home-screeen1.dart';
import 'package:e_learning_app/utils/app_utils.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  List<String> codes = ['', '', '', ''];

  void _onKeyboardTap(String value) {
    for (var i = 0; i < codes.length; i++) {
      if (codes[i].isEmpty) {
        setState(() {
          codes[i] = value;
        });
        if (i < codes.length - 1) {
          // Move focus to the next text field
          FocusScope.of(context).nextFocus();
        } else {
          // Last text field, perform your logic here (e.g., submitting the code)
        }
        break;
      }
    }
  }

  void _clearCodeField(int index) {
    if (index > 0 && codes[index].isEmpty) {
      // Clear the current field and move focus to the previous field
      setState(() {
        codes[index - 1] = '';
      });
      FocusScope.of(context).previousFocus();
    } else {
      // Clear the current field
      setState(() {
        codes[index] = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe4f1f8),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffe5f1f8),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 24,
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Text(
            "Verify Phone",
            textAlign: TextAlign.center,
            style: GoogleFonts.ibmPlexSans(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.12,
                ),
                child: Column(
                  children: [
                    RichText(
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      maxLines: 1,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Code is sent to   ",
                            style: GoogleFonts.ibmPlexSans(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: "283 835 2999",
                            style: GoogleFonts.ibmPlexSans(
                             color: const Color(0xff4873a6),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (var i = 0; i < codes.length; i++)
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                codes[i],
                                style: const TextStyle(fontSize: 24),
                              ),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Align(
                        alignment: Alignment.bottomLeft,
                        child: SmallText(
                          text: "Didn't receive code?",
                          color: Colors.black,
                        )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                      GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder:(BuildContext context)  => const HomeScreen1()),    ModalRoute.withName('/'),);
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
                          text: 'Verify and Create Account',
                          color: Colors.white,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              NumericKeyboard(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                onKeyboardTap: _onKeyboardTap,
                textColor: Colors.black,
                rightButtonFn: () {
                  for (var i = codes.length - 1; i >= 0; i--) {
                    if (codes[i].isNotEmpty) {
                      _clearCodeField(i);
                      break;
                    }
                  }
                },
                rightIcon: const Icon(
                  Icons.backspace,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
