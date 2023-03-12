// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe4f1f8),
      body: SafeArea(
        // ignore: avoid_unnecessary_containers
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.425,
                  width: double.infinity,
                  color: const Color(0xffffffff),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.06,
                          vertical: MediaQuery.of(context).size.width * 0.038,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Profile",
                              style: GoogleFonts.ibmPlexSans(
                                  fontSize: 25, color: const Color(0xff0a0706)),
                            ),
                            const Icon(Icons.settings_outlined),
                          ],
                        ),
                      ),
                //      const SizedBox(height: 5),
                      const Center(
                        child: CircleAvatar(
                          radius: 85,
                          backgroundImage:
                              AssetImage('assets/images/download.jpeg'),
                          backgroundColor: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Center(
                        child: Text("Rakibull hassan",
                            style: GoogleFonts.ibmPlexSans(
                              color: const Color(0xff211e1d),
                              fontSize: 24,
                            )),
                      ),
        
                      SizedBox(height: MediaQuery.of(context).size.height*0.03),
        
                      Container(
                        padding: EdgeInsets.symmetric( horizontal:MediaQuery.of(context).size.width*0.24),   
                        child: const StepProgressIndicator(
                          totalSteps: 100,
                          currentStep: 60,
                          size: 8,
                          padding: 0,
                          selectedColor: Color(0xff3787ff),
                          unselectedColor: Color(0xff767372),
                          roundedEdges: Radius.circular(10),

                        ),
                      ),
                      
                    SizedBox(height: MediaQuery.of(context).size.height*0.01),
        
                   Text("60% complete your profile",style: GoogleFonts.ibmPlexSans(fontSize: 14,fontWeight: FontWeight.w500),)
                     ],
                  ),
                ), 
              Padding(
                padding:  EdgeInsets.symmetric(
                  vertical:MediaQuery.of(context).size.width*0.07 ,
                  horizontal: MediaQuery.of(context).size.height*0.03),
              
                child: Column(
                  children: [
                    Container(
                //      height: 80,
               //       width: double.infinity,
                      
                      decoration: BoxDecoration(
                      color: const Color(0xff3787ff),
                      borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(
                          horizontal:MediaQuery.of(context).size.width*0.06),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.014),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Billed every year",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 16),),
                                  const SizedBox(height: 13),
                                  Text("12 months at \$8.00/month",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 16),),
                                ],
                              ),
                            ),
                            Center(
                              child: Container(
                                height: 35,
                                width: MediaQuery.of(context).size.width*0.22,
                                decoration: BoxDecoration(
                                 color: Colors.white, 
                                 borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(child: Text("Upgrade",style: GoogleFonts.ibmPlexSans(fontSize: 15,fontWeight: FontWeight.w400),)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                 const SizedBox(height: 22),
                 Container(
                   height: MediaQuery.of(context).size.height*0.34,
                //   width: double.infinity,
                decoration: BoxDecoration(
                color: const Color(0xff3787ff),
                borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(
                 horizontal: MediaQuery.of(context).size.width*0.08,
                 vertical: MediaQuery.of(context).size.height*0.04,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Profile information",style: GoogleFonts.ibmPlexSans(
                          color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
                          Image.asset('assets/icons/pencil-book.png',color: Colors.white,),
                        ],
                      ),
                   SizedBox(height: MediaQuery.of(context).size.height*0.028,),
                  Text("Email Address",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
                   SizedBox(height: MediaQuery.of(context).size.height*0.024,),
                  Text("Password",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
                    SizedBox(height: MediaQuery.of(context).size.height*0.024,),
                  Text("First Name",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
                     SizedBox(height: MediaQuery.of(context).size.height*0.024,),
                  Text("Last Name",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
               ),
           SizedBox(height: MediaQuery.of(context).size.height*0.045,),
           
          Container(
          height: 75,
          decoration: BoxDecoration(
          color: const Color(0xff3787ff),  
          borderRadius: BorderRadius.circular(40)
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal:  MediaQuery.of(context).size.width*0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.home_outlined,size: 30,color: Colors.white,),
                 
                  Container(padding:const EdgeInsets.only(top: 24,bottom: 24
                  ),child: Image.asset('assets/icons/icons8-book.png')),
                 
                Container(padding:const EdgeInsets.only(top: 23,bottom: 23),child: Image.asset('assets/icons/chat-message.png',)),
                 
                Row(
                  children: [
                    const Icon(Icons.person_2_outlined,size: 30,color: Colors.white,),
                    const SizedBox(width: 6),
                    Text("Profile",style: GoogleFonts.ibmPlexSans(color: Colors.white,decoration: TextDecoration.overline),)
                  ],
                ),
               
              ],
            ),
          ),
          ),
                 
                
        
                  ],
                ),
              ),
                      
                  
              ],
            ),
          ),
        ),
      ),
    );
  }
}
