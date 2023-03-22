// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_fonts/google_fonts.dart';

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
       backgroundColor: const Color(0xffe5f1f8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width*0.05,
              vertical: MediaQuery.of(context).size.height*0.05
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.arrow_back_ios),
                const SizedBox(height: 10),
                Text("Add your payment method",
                style:GoogleFonts.ibmPlexSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.08),
                Text("Card Name",
                style:GoogleFonts.ibmPlexSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.009),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                  color:Colors.white, 
                  borderRadius: BorderRadius.circular(15) 
                  ),
                  
                  child: TextField(
                    //  controller: email,
                    decoration: InputDecoration(
                      hintText: "My VISA card",
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 14),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.04)
                    ),
                  ),
                ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.03),
                Text("Card Number",
                style:GoogleFonts.ibmPlexSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.009),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                   color: Colors.white,  
                   borderRadius: BorderRadius.circular(15)
                  ),
                 
                  child: TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(16),
                      CreditCardInputFormat()
                    ],
                    keyboardType: TextInputType.number,
                    decoration:  InputDecoration(
                      hintText: "XXXX XXXX XXXX XXXX",
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 14),
                      border: InputBorder.none,
                       contentPadding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.04)
                    ),
                  ),
                ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.03),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("Exp Date",
                style:GoogleFonts.ibmPlexSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                  ),
                ), 
                   SizedBox(height: MediaQuery.of(context).size.height*0.013),
                   Container(
                    height: 50,
                     width:MediaQuery.of(context).size.width * 0.35 ,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(4),
                        CardMonthInputFormatter(),
                      ],
                      decoration:InputDecoration(
                        hintText: "MM/YY",
                           border: InputBorder.none,
                       contentPadding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.04)
                        ),
                    ),
                   ),
                  ],
                 ),
                     Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("CVV2",
                style:GoogleFonts.ibmPlexSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                  ),
                ), 
                   SizedBox(height: MediaQuery.of(context).size.height*0.013),
                   Container(
                    height: 55,
                    width:MediaQuery.of(context).size.width * 0.35 ,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(3),
                        CardMonthInputFormatter(),
                      ],
                      decoration:  InputDecoration(
                        hintText: "XXX",
                        border: InputBorder.none,
                       contentPadding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.04)
                        ),
                    ),
                   ),
                  ],
                 ),
                ],
               ),

               SizedBox(height: MediaQuery.of(context).size.height*0.09),
               Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue
                ),
                child: Center(child: Text("Continue",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20))),
               ),
                     
            
            
            
            
                ],
              ),
            ),
        ),
        ),
          



            
          
        
        
    );
  }
}

class CreditCardInputFormat extends TextInputFormatter{
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue){
    if(newValue.selection.baseOffset==0){
      return newValue;
    }
    String enteredData=newValue.text;
    StringBuffer buffer=StringBuffer();

    for(int i=0;i<enteredData.length;i++){
      buffer.write(enteredData[i]);
      int index=i+1;
      if(index%4==0 && enteredData.length !=index){
        buffer.write(" ");
      }
    }
    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.toString().length)
    );
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