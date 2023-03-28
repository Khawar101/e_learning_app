// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AcountScreen extends StatefulWidget {
  const AcountScreen({super.key });
 
  @override
  State<AcountScreen> createState() => _AcountScreenState();
}

class _AcountScreenState extends State<AcountScreen> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xffe5f1f8),
          appBar: AppBar(
      centerTitle: true,
     ),
     
       drawer: Drawer(
      backgroundColor: const Color(0xffe5f1f8),
      width: MediaQuery.of(context).size.width*0.6,
   
        child: ListView(
        
          padding: const EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)
              ),
              ),
              child: Padding(
                padding:EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.04
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/images/girl-images-1.jpg'),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                     
                      children: [
                        Text('Yousaf Saymon',style: GoogleFonts.ibmPlexSans(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w700),),
                        Text('Student',style: GoogleFonts.ibmPlexSans(color: Colors.black,fontSize: 12),),
                      ],
                    )
              
                  ],
                ),
              )
            ),
            ListTile(
              title: const Text('Home'),
              horizontalTitleGap: 0,
              leading: const Icon(Icons.home_filled),
              iconColor: Colors.black87,
              onTap: () {
              
                Navigator.pop(context);
              },
            ),
           ListTile(
              title: const Text('Videos'),
              horizontalTitleGap: 0,
              leading: const Icon(Icons.ondemand_video_outlined),
              iconColor: Colors.black87,
              onTap: () {

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Messages'),
              horizontalTitleGap: 0,
              leading: const Icon(Icons.message_outlined),
              iconColor: Colors.black87,
              onTap: () {

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Courses'),
              horizontalTitleGap: 0,
              leading: const Icon(Icons.book_outlined),
              iconColor: Colors.black87,
              onTap: () {

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('E-Book'),
              horizontalTitleGap: 0,
              leading: const Icon(Icons.menu_book_sharp),
              iconColor: Colors.black87,
              onTap: () {

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Settings'),
              horizontalTitleGap: 0,
              leading: const Icon(Icons.settings),
              iconColor: Colors.black87,
              onTap: () {

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Logout'),
              horizontalTitleGap: 0,
              leading: const Icon(Icons.logout),
              iconColor: Colors.black87,
              onTap: () {

                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
  Padding(
    padding:EdgeInsets.symmetric(
      horizontal: MediaQuery.of(context).size.width*0.06,
      vertical: MediaQuery.of(context).size.height*0.03
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Text('Account',style: GoogleFonts.ibmPlexSans(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w500),),
          SizedBox(height: MediaQuery.of(context).size.height*0.03),
          Center(
            child: Stack(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/girl-images-3.webp'),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width*0.1,
                  child: const CircleAvatar(
                    radius: 10,
                    child: Center(child: Icon(Icons.camera_alt,size: 12,)),
                  ),
                ),
               
                  

              ],
            ),
          ),
            SizedBox(height: MediaQuery.of(context).size.height*0.04),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text('Favourite',style: GoogleFonts.ibmPlexSans(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                     Icon(Icons.arrow_forward_ios,size: 16,)
           ],
          ),
             SizedBox(height: MediaQuery.of(context).size.height*0.03),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text('Edit Account',style: GoogleFonts.ibmPlexSans(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                     Icon(Icons.arrow_forward_ios,size: 16,)
           ],
          ),
            SizedBox(height: MediaQuery.of(context).size.height*0.03),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text('Setting and Privacy',style: GoogleFonts.ibmPlexSans(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                     Icon(Icons.arrow_forward_ios,size: 16,)
           ],
          ),
            SizedBox(height: MediaQuery.of(context).size.height*0.03),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text('Help',style: GoogleFonts.ibmPlexSans(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                     Icon(Icons.arrow_forward_ios,size: 16,)
           ],
          ),

      ],
    ),
  ),
          ],
        )
      ),
    );
  }
}