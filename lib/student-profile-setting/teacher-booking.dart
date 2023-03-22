// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:calender_picker/calender_picker.dart';

class TeacherBooking extends StatefulWidget {
  const TeacherBooking({super.key});

  @override
  State<TeacherBooking> createState() => _TeacherBookingState();
}

class _TeacherBookingState extends State<TeacherBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.045,
                    vertical: MediaQuery.of(context).size.height * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/icons/left-arrow.png'),
                  Text(
                    "Teacher Booking",
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  // ignore: prefer_const_constructors
                  Stack(
                    children: const [
                      Icon(Icons.notifications_outlined, size: 28),
                      CircleAvatar(
                        radius: 6,
                        backgroundColor: Color(0xff3787ff),
                      ),
                    ],
                  ),
                ],
              ),
            SizedBox(height:MediaQuery.of(context).size.height*0.05 ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "Book appointment",
                      style: GoogleFonts.ibmPlexSans(
                          fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  Image.asset('assets/icons/adjust-48.png',width: 18,)
                ],
              ),
             SizedBox(height: MediaQuery.of(context).size.height * 0.015),    
             Container(
              decoration: BoxDecoration(
               color: const Color(0xff3787ff),
               borderRadius: BorderRadius.circular(20) 
              ),
              
               child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: CalenderPicker(
                 DateTime.now(),
                 initialSelectedDate: DateTime.now(),
                 selectionColor: Colors.black,
                 selectedTextColor: Colors.white,
                 onDateChange: (date) {
                   // New date selected
                   setState(() {
                  //   _selectedValue = date;
                   });
                 },
               ),
               ),
             ),
             SizedBox(height: MediaQuery.of(context).size.height * 0.025), 
           RichText(
             text: TextSpan(
              text: '3 ',style: GoogleFonts.ibmPlexSans(fontSize: 12, fontWeight: FontWeight.w500,color: Colors.black),
                          
            
               children:<TextSpan>[
               const TextSpan(text: 'Teacher available on'),
              TextSpan(text: ' 21 March "2023',style:GoogleFonts.ibmPlexSans( color: const Color(0xff3787ff),)),
              ],
            ),
          ),
          SizedBox(height:MediaQuery.of(context).size.height*0.02 ),
          Expanded(
           child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView.builder(
                        itemCount: 13,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom:MediaQuery.of(context).size.height*0.01 ),
                            child: Container(
                              height: 100,
                              width: double.infinity,
                              decoration: BoxDecoration(
                               color: const Color(0xff3787ff), 
                               borderRadius: BorderRadius.circular(20)
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                   horizontal: MediaQuery.of(context).size.width * 0.02,
                                  vertical: MediaQuery.of(context).size.height * 0.009),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 90,
                                          decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: ClipRRect(
                                             borderRadius: BorderRadius.circular(20),
                                            child: Image.asset('assets/images/download (1).jpeg',fit: BoxFit.cover,)),
                                          
                                        ),
                                        const SizedBox(width:10),
                                        Text(  "Adobe XD",
                                           style: GoogleFonts.ibmPlexSans(
                                           fontSize: 15, fontWeight: FontWeight.w500,color: Colors.white),                         
                                             ),
                                           ],
                                          ),
                                             Container(
                                          height: 100,
                                          width: 90,
                                          decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white,
                                          ),
                                          child:Center(
                                            child:   RichText(
                                              text: TextSpan(
                                                                      
                                              children:<TextSpan>[
                                                
                                              TextSpan(text: '03',style: GoogleFonts.ibmPlexSans(color: Colors.black,fontSize: 20)),
                                              TextSpan(text: '\nYears',style: GoogleFonts.ibmPlexSans(color: Colors.black,fontSize: 12)),
                                                       
                                            ],
                                                                                     ),
                                                                                   ),
                                          ),
                                          
                                        ),
                                      ],
                                   
                                ),
                              ),
                              
                            ),
                          );
                        },
                      ),
                    ),
               ),
        
        
        
        
          ],
               ),
        ),
      ),     //Calender part
    );
  }
}