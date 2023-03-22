// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color(0xffe5f1f8),
     body: SafeArea(
      child:Padding(
        padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.04,
                vertical: MediaQuery.of(context).size.height * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Image.asset('assets/icons/left-arrow.png'),
                Text(
                  "Checkout",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
                 Image.asset('assets/icons/scan-24.png'),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.05),
            Text(
                  "Payment Method",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
              SizedBox(height: MediaQuery.of(context).size.height*0.03),
              Container(
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          activeColor: Colors.white,
                          shape: const CircleBorder(),
                          value: checkBoxValue,
                          onChanged: (bool? newValue) {
                          setState(() {
                          checkBoxValue = newValue!;
                         });
                       },
                     ),


                      ],
                    ),



                  ],
                ),
              ),   

          ],
        ),
      ) 
     ),
    );
  }
}