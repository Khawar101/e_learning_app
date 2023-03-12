import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffe4f1f8),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   // ignore: prefer_const_literals_to_create_immutables
          //   children: [
          //     Padding(
          //       padding: EdgeInsets.symmetric(
          //           horizontal: MediaQuery.of(context).size.width * 0.08,
          //           vertical: MediaQuery.of(context).size.height * 0.065),
          //       child: GestureDetector(
          //           onTap: () {
          //             Navigator.pop(context);
          //           },
          //           child: const Icon(Icons.arrow_back_ios)),
          //     ),
          //   ],
          // ),
          Padding(
            padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.25),
            child: Stack(
              alignment: Alignment.center,
              children:[ 
                Container(
                  
                height: MediaQuery.of(context).size.height*0.12,
                width: MediaQuery.of(context).size.width*0.25,
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 2,color: Colors.black)
                  ), ), 
                  Container(
                    
                    height:MediaQuery.of(context).size.height*0.05 ,
                    width: MediaQuery.of(context).size.width*0.1,
                    
                    decoration: BoxDecoration(
                      color: const Color(0xff9fc7fb),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Image.asset('assets/icons/lock-icon.png')
                  ),
                  
                
              
             ],
            ),
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Text(
            'Enter a Code',
            style: GoogleFonts.ibmPlexSans(
              fontSize: 28,
              
            ),
          ),
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.015),
            child:RichText(
              textAlign: TextAlign.center,
            text:  TextSpan(
              text: 'We sent a verification code to \n your phonr number ',style: GoogleFonts.ibmPlexSans(color: Colors.black,),             
              children:const [
                 TextSpan(text: '(+92)3012345678', style:TextStyle(color: Colors.blue,overflow: TextOverflow.ellipsis, ),),
                
              ],
            ),
            )
          ),
          //
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.060,
                width: MediaQuery.of(context).size.width * 0.11,
                child:  const TextField(
                  //controller: otpController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20),),
                    ),
                    
                  ),
                  keyboardType: TextInputType.phone,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.060,
                width: MediaQuery.of(context).size.width * 0.11,
                child: const TextField(
                  //controller: otpController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20),),
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.060,
                width: MediaQuery.of(context).size.width * 0.11,
                child: const TextField(
                  //controller: otpController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20),),
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.060,
                width: MediaQuery.of(context).size.width * 0.11,
                child: const TextField(
                  //controller: otpController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20),),
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.035),
          GestureDetector(
            onTap: () {
              //verifyOTP();
            },
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff3787ff),
                borderRadius: BorderRadius.circular(30),
              ),
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.80,
              child: Center(
                child: Text(
                  'Change Password',
                  style: GoogleFonts.ibmPlexSans(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color:  Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          GestureDetector(
            onTap: () {
              
            },
            child: Text("Resend Code",style: GoogleFonts.ibmPlexSans(
              color:const Color(0xff3787ff),fontSize: 13,decoration: TextDecoration.underline ),))
        ],
      ),
    );
  }
}
