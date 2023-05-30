// ignore: file_names
import 'package:e_learning_app/payment/otp_bottomsheet.dart';
import 'package:e_learning_app/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_credit_card/glassmorphism_config.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethod1 extends StatefulWidget {
  const PaymentMethod1({
    super.key,
  });

  @override
  State<PaymentMethod1> createState() => _PaymentMethod1State();
}

class _PaymentMethod1State extends State<PaymentMethod1> {
  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return const FractionallySizedBox(
            heightFactor: 0.7, child: BottomSheetOpen());
      },
      backgroundColor:
          Colors.transparent, // Set the background color to transparent
      isScrollControlled: true,
    );
  }

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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
            size: 18,
          ),
        ),
        title: Text(
          "Payment Method",
          textAlign: TextAlign.center,
          style: GoogleFonts.ibmPlexSans(
              fontSize: 18,
              color: const Color(0xff4873a6).withOpacity(0.7),
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const BigText(text: "\$74.00 ", color: Colors.black),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              const ButtonText(text: "My card", color: Colors.black),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
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
                cardBgColor: const Color(0xff4873a6).withOpacity(0.7),
                backgroundImage:
                    useBackgroundImage ? 'assets/card_bg.png' : null,
                isSwipeGestureEnabled: true,
                onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
                // customCardTypeIcons: <CustomCardTypeIcon>[
                //   CustomCardTypeIcon(
                //     cardType: CardType.mastercard,
                //     cardImage: Image.asset(
                //       'assets/mastercard.png',
                //       height: 48,
                //       width: 48,
                //     ),
                //   ),
                // ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              GestureDetector(
                onTap: () => _openBottomSheet(context),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff4873a6).withOpacity(0.7),
                  ),
                  child: const Center(
                    child: ButtonText(
                      text: 'Pay Now',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
