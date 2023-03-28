// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  String text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: const Color(0xffe4f1f8),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal:MediaQuery.of(context).size.width*0.05,
            vertical: MediaQuery.of(context).size.height*0.06 
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/icons/icons8-multiply-32.png',width: 20,),
                  Expanded(child: Center(child: Text('Verify Phone',style: GoogleFonts.ibmPlexSans(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),)))
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.06),
              Padding(
                padding:EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width*0.15
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
                      TextSpan(text: "Code is sent to ",style: GoogleFonts.ibmPlexSans(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500)),
                       TextSpan(text: "283 835 2999",style: GoogleFonts.ibmPlexSans(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.w500))
                    ]
                  ),
                ),
                  
                SizedBox(height: MediaQuery.of(context).size.height*0.015),
                                 PinCodeTextField(
                                   appContext: context,
                                   keyboardType: TextInputType.none,
              
                                   length: 4,
                                   obscureText: false,
                                   animationType: AnimationType.fade,
                                   pinTheme: PinTheme(
                                     shape: PinCodeFieldShape.box,
                                     borderRadius: BorderRadius.circular(10),
                                     fieldHeight: 50,
                                     fieldWidth: 50,
                                     // activeFillColor: Colors.white,
                                     activeColor: Colors.white70,
                                     activeFillColor: Colors.blue,
                                     selectedFillColor: Colors.blue,
                                     inactiveFillColor: Colors.blue,
                                     selectedColor: Colors.white70,
                                     inactiveColor: Colors.white70,
                                     disabledColor: Colors.white70,
                                   ),
                                   animationDuration:
                                       const Duration(milliseconds: 300),
                                   // backgroundColor: Colors.blue.shade50,
                                   enableActiveFill: true,
                                   // errorAnimationController: errorController,
                                   // controller: textEditingController,
                                   onCompleted: (v) {
                                     print("Completed");
                                   },
                                   onChanged: (value) {
                                     print(value);
                                     setState(() {
                                       //     currentText = value;
                                     });
                                   },
                                   beforeTextPaste: (text) {
                                     print("Allowing to paste $text");
                                     //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                     //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                     return true;
                                   },
                                 ),
                                    SizedBox(height: MediaQuery.of(context).size.height*0.017),
                                   Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text("Didn't recieve code?",style: GoogleFonts.ibmPlexSans(color: Colors.black,fontSize: 10,),)),
               SizedBox(height: MediaQuery.of(context).size.height*0.04),
               Container(
              //  height: 50,
              //  width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding:EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width*0.025,
                    vertical: MediaQuery.of(context).size.height*0.014
                  ),
                  child: Center(child: Text('Verify and Create Account',style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 16),)),
                ),
               ),
              
                 ],
                ),
              ),
               SizedBox(height: MediaQuery.of(context).size.height*0.06),
                NumericKeyboard(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    onKeyboardTap: _onKeyboardTap,
                                    textColor: Colors.black,
                                    rightButtonFn: () {
                                      setState(() {
                                        text =
                                            text.substring(0, text.length - 1);
                                      });
                                    },
                                    rightIcon: const Icon(
                                      Icons.backspace,
                                      color: Colors.black,
                                    ),
                                    leftButtonFn: () {
                                      print('left button clicked');
                                    },
                                    leftIcon: const Icon(
                                      Icons.check,
                                      color: Colors.black,
                                    ),
                                  ),

            ],
          ),
        )
      ),
    );
  }
   _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
  }
}




      
   