// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentSuccess extends StatefulWidget {
  const PaymentSuccess({super.key});

  @override
  State<PaymentSuccess> createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe5f1f8),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.035,
              vertical: MediaQuery.of(context).size.height * 0.06),
          child: Column(children: [
            Row(
              children: [
                const Icon(Icons.arrow_back_sharp),
                Expanded(
                  child: Text(
                    "Payment",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.15),
            Stack(
              children: [
               
               Center(
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: Container(
                      height: 40,
                      width: 40,
                  
                    decoration: BoxDecoration(
                      color: Colors.blue, 
                      borderRadius: BorderRadius.circular(20) 
                    ),
                    child:  const Icon(Icons.done,color: Colors.white,),
                    ),
                  ),
                ),

              Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      height: 80,
                      width: 80,
                  
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(118, 3, 168, 244), 
                      borderRadius: BorderRadius.circular(45) 
                    ),
                    ),
                  ),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: CircularProgressIndicator(
                        strokeWidth: 5,
                        color: Colors.white,
                        value: 0.8,
                       
                      ),
                    ),
                  ),
                ),
                const Center(
                  child: SizedBox(
                    height: 120,
                    width: 120,
                    child: CircularProgressIndicator(
                      strokeWidth: 5,
                      color: Colors.blue,
                      value: 0.8,
                      semanticsValue: '1',
                     
                    ),
                  ),
                ),
              ],
            ),
              SizedBox(height: MediaQuery.of(context).size.height*0.07),
              Text("Payment Success",
              style:GoogleFonts.ibmPlexSans(
                fontSize: 24,
                fontWeight: FontWeight.w500
                ),
                ),
                 SizedBox(height: MediaQuery.of(context).size.height*0.01),
              Text("Your credit card is successfully\nscanned",
              textAlign: TextAlign.center,
              style:GoogleFonts.ibmPlexSans(
                fontSize: 12,
                //fontWeight: FontWeight.w500
                ),
                ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.09),
                  Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child:  Center(
                      child: Text("Track Order",
                                  style:GoogleFonts.ibmPlexSans(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white
                                    ),
                                    ),
                    ),
                  )







          ]),
        ),
      ),
    );
  }
}
