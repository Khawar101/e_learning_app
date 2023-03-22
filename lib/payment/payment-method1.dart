// ignore: file_names
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_credit_card/custom_card_type_icon.dart';
import 'package:flutter_credit_card/glassmorphism_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';

class PaymentMethod1 extends StatefulWidget {
  const PaymentMethod1({
    super.key,
  });

  @override
  State<PaymentMethod1> createState() => _PaymentMethod1State();
}

class _PaymentMethod1State extends State<PaymentMethod1> {
  //  StreamController<ErrorAnimationType> errorController = StreamController<ErrorAnimationType>();
  String text = '';

  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  OutlineInputBorder? border;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey.withOpacity(0.7),
        width: 2.0,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe5f1f8),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.035,
                vertical: MediaQuery.of(context).size.height * 0.07),
            child: Row(
              children: [
                Image.asset('assets/icons/icons8-multiply-32.png', width: 20),
                Expanded(
                  child: Text(
                    "Payment Method",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          Text(
            "\$74.00 ",
            textAlign: TextAlign.center,
            style: GoogleFonts.ibmPlexSans(
                fontSize: 22, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.09),
          Text(
            "My card",
            textAlign: TextAlign.center,
            style: GoogleFonts.ibmPlexSans(
                fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          CreditCardWidget(
            glassmorphismConfig:
                useGlassMorphism ? Glassmorphism.defaultConfig() : null,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            bankName: 'Axis Bank',
            frontCardBorder:
                !useGlassMorphism ? Border.all(color: Colors.grey) : null,
            backCardBorder:
                !useGlassMorphism ? Border.all(color: Colors.grey) : null,
            showBackView: isCvvFocused,
            obscureCardNumber: true,
            obscureCardCvv: true,
            isHolderNameVisible: true,
            cardBgColor: Colors.blue,
            backgroundImage: useBackgroundImage ? 'assets/card_bg.png' : null,
            isSwipeGestureEnabled: true,
            onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
            customCardTypeIcons: <CustomCardTypeIcon>[
              // CustomCardTypeIcon(
              //   cardType: CardType.mastercard,
              //   cardImage: Image.asset(
              //     'assets/mastercard.png',
              //     height: 48,
              //     width: 48,
              //   ),
              // ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.04,
            ),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.blue),
              child: Center(
                child: ElevatedButton(
                  child: Text(
                    "Pay Now",
                    style: GoogleFonts.ibmPlexSans(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (contaxt) {
                          return Container(
                            height: MediaQuery.of(context).size.height * 1,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.blue,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical:
                                    MediaQuery.of(context).size.height * 0.03,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "Payment Password",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.ibmPlexSans(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "Please enter the payment Password",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.ibmPlexSans(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                       SizedBox(height: MediaQuery.of(context).size.height*0.02),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            MediaQuery.of(context).size.width *
                                                0.09),
                                    child: PinCodeTextField(
                                      appContext: context,
                                      keyboardType: TextInputType.none,

                                      length: 6,
                                      obscureText: false,
                                      animationType: AnimationType.fade,
                                      pinTheme: PinTheme(
                                        shape: PinCodeFieldShape.box,
                                        borderRadius: BorderRadius.circular(10),
                                        fieldHeight: 40,
                                        fieldWidth: 40,
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
                                  ),
                            
                                  NumericKeyboard(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    onKeyboardTap: _onKeyboardTap,
                                    textColor: Colors.white70,
                                    rightButtonFn: () {
                                      setState(() {
                                        text =
                                            text.substring(0, text.length - 1);
                                      });
                                    },
                                    rightIcon: const Icon(
                                      Icons.backspace,
                                      color: Colors.white70,
                                    ),
                                    leftButtonFn: () {
                                      print('left button clicked');
                                    },
                                    leftIcon: const Icon(
                                      Icons.check,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                ),
              ),

              // Center(child: Text(
              //   "Pay Now",
              //   style: GoogleFonts.ibmPlexSans(
              //     color: Colors.white,
              //     fontWeight: FontWeight.w500,
              //     fontSize: 16
              //     ),
              //   ),
              // ),
            ),
          ),
        ],
      )),
    );
  }

  _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
  }
}
