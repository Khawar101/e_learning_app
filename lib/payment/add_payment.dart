// ignore: file_names
import 'package:e_learning_app/payment/payment_method1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/app_utils.dart';

class AddPayment extends StatefulWidget {
  const AddPayment({super.key});

  @override
  State<AddPayment> createState() => _AddPaymentState();
}

class _AddPaymentState extends State<AddPayment> {
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
        // title: Text(
        //   "Slect Date & Time",
        //   textAlign: TextAlign.center,
        //   style: GoogleFonts.ibmPlexSans(
        //       fontSize: 18,
        //       color: const Color(0xff4873a6).withOpacity(0.7),
        //       fontWeight: FontWeight.w600),
        // ),
        // centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            // vertical: MediaQuery.of(context).size.height*0.05
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BigText(
                  text: "Add your payment method", color: Colors.black),
              SizedBox(height: MediaQuery.of(context).size.height * 0.07),
              const ButtonText(text: "Card Name", color: Colors.black),
              SizedBox(height: MediaQuery.of(context).size.height * 0.009),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: const Color(0xff4873a6).withOpacity(0.7),
                        width: 1),
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  //  controller: email,
                  decoration: InputDecoration(
                      hintText: "My VISA card",
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 14),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal:
                              MediaQuery.of(context).size.width * 0.04)),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              const ButtonText(text: "Card Number", color: Colors.black),
              SizedBox(height: MediaQuery.of(context).size.height * 0.009),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: const Color(0xff4873a6).withOpacity(0.7),
                        width: 1),
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(16),
                    CreditCardInputFormat()
                  ],
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "XXXX XXXX XXXX XXXX",
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 14),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal:
                              MediaQuery.of(context).size.width * 0.04)),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ButtonText(text: "Exp Date", color: Colors.black),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.013),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            border: Border.all(
                                color: const Color(0xff4873a6).withOpacity(0.7),
                                width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(6),
                            CardMonthInputFormatter(),
                          ],
                          decoration: InputDecoration(
                              hintText: "DD/MM/YY",
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width *
                                          0.04)),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ButtonText(text: "CVV2", color: Colors.black),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.013),
                      Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            border: Border.all(
                                color: const Color(0xff4873a6).withOpacity(0.7),
                                width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(3),
                            CreditCardInputFormat()
                          ],
                          decoration: InputDecoration(
                              hintText: "XXX",
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width *
                                          0.04)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PaymentMethod1()),
                  );
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff4873a6).withOpacity(0.7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                      child: ButtonText(
                    text: 'Continue',
                    color: Colors.white,
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CreditCardInputFormat extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    String enteredData = newValue.text;
    StringBuffer buffer = StringBuffer();

    for (int i = 0; i < enteredData.length; i++) {
      buffer.write(enteredData[i]);
      int index = i + 1;
      if (index % 4 == 0 && enteredData.length != index) {
        buffer.write(" ");
      }
    }
    return TextEditingValue(
        text: buffer.toString(),
        selection: TextSelection.collapsed(offset: buffer.toString().length));
  }
}

class CardMonthInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var newText = newValue.text;
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    var buffer = StringBuffer();
    for (int i = 0; i < newText.length; i++) {
      buffer.write(newText[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 2 == 0 && nonZeroIndex != newText.length) {
        buffer.write('/');
      }
    }
    var string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: TextSelection.collapsed(offset: string.length));
  }
}
