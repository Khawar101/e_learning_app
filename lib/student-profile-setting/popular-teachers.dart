
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class PopularTeacher extends StatefulWidget {
  const PopularTeacher({super.key});

  @override
  State<PopularTeacher> createState() => _PopularTeacherState();
}

class _PopularTeacherState extends State<PopularTeacher> {
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
                  // ignore: prefer_const_constructors                
                      
                      const CircleAvatar(
                        radius: 18,
                       backgroundImage: AssetImage('assets/images/tree.jpg'),
                      ),
                    
                ],
              ),
            SizedBox(height:MediaQuery.of(context).size.height*0.05 ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   RichText(
             text: TextSpan(
              text: 'Popular',style: GoogleFonts.ibmPlexSans(fontSize: 22, fontWeight: FontWeight.w600,color: Colors.black),
                          
            
               children:const <TextSpan>[
               TextSpan(text: '\nteachers!'),
           
              ],
            ),
          ),
                  Image.asset('assets/icons/adjust-48.png',width: 18,)
                ],
              ),
            
             SizedBox(height: MediaQuery.of(context).size.height * 0.060), 
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
                                          width: 80,
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