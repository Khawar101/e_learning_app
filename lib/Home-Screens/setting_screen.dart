// ignore: file_names
import 'package:e_learning_app/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool light0 = true;
  bool light1 = true;

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      // Thumb icon when the switch is selected.
      if (states.contains(MaterialState.selected)) {
        return const Icon(
          Icons.check,
        );
      }
      return const Icon(Icons.close);
    },
  );

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
            "Setting",
            textAlign: TextAlign.center,
            style: GoogleFonts.ibmPlexSans(
                fontSize: 18,
                color: const Color(0xff4873a6).withOpacity(0.7),
                fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CustomText(
                    text: 'Save',
                    size: 13,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff4873a6).withOpacity(0.7)),
              ),
            )
          ]),
      //   backgroundColor: const Color(0xffe4f1f8),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          child: Column(
            children: [
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xFF4873A6).withOpacity(0.7),),
                  
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       ButtonText(
                          text: 'Connect to Facebook', color: const Color(0xFF4873A6).withOpacity(0.7),),
                      Switch(
                        thumbIcon: thumbIcon,
                        activeColor: const Color(0xFF4873A6).withOpacity(0.7),
                        activeTrackColor: Colors.grey,
                        inactiveThumbColor: Colors.grey,
                        inactiveTrackColor: const Color(0xFF4873A6).withOpacity(0.7),
                        splashRadius: 5000,
                        value: light0,
                        onChanged: (bool value) {
                          setState(() {
                            light0 = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all( color: const Color(0xFF4873A6).withOpacity(0.7),),
                 
                ),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ButtonText(text: 'R', color:const Color(0xFF4873A6).withOpacity(0.7),),
                          const SizedBox(width: 10),
                          ButtonText(text: 'Beta', color: const Color(0xFF4873A6).withOpacity(0.7),)
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: const Color(0xFF4873A6).withOpacity(0.7),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xFF4873A6).withOpacity(0.7),),
                  
                ),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.notifications_active,
                            size: 18,
                            color: const Color(0xFF4873A6).withOpacity(0.7),
                          ),
                          const SizedBox(width: 10),
                          ButtonText(text: 'Notification', color: const Color(0xFF4873A6).withOpacity(0.7),)
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: const Color(0xFF4873A6).withOpacity(0.7),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xFF4873A6).withOpacity(0.7),),
                  
                ),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.surround_sound_sharp,
                            size: 18,
                            color: const Color(0xFF4873A6).withOpacity(0.7),
                          ),
                          const SizedBox(width: 10),
                          ButtonText(
                              text: 'Learning & sound setting',
                              color: const Color(0xFF4873A6).withOpacity(0.7),)
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: const Color(0xFF4873A6).withOpacity(0.7),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  
                  border: Border.all( color: const Color(0xFF4873A6).withOpacity(0.7),),
                 
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Row(
                        children: [
                           Icon(
                            Icons.dark_mode,
                            size: 18,
                            color:  const Color(0xFF4873A6).withOpacity(0.7),
                          ),
                          const SizedBox(width: 10),
                          ButtonText(text: 'Dark Mode', color: const Color(0xFF4873A6).withOpacity(0.7),)
                        ],
                      ),
                      Switch(
                        thumbIcon: thumbIcon,
                        activeColor: const Color(0xFF4873A6).withOpacity(0.7),
                        activeTrackColor: Colors.grey,
                        inactiveThumbColor: Colors.grey,
                        inactiveTrackColor: const Color(0xFF4873A6).withOpacity(0.7),
                        splashRadius: 5000,
                        value: light1,
                        onChanged: (bool value) {
                          setState(() {
                            light1 = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xFF4873A6).withOpacity(0.7)),
                  
                ),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.question_mark,
                            size: 18,
                            color: const Color(0xFF4873A6).withOpacity(0.7),
                          ),
                          const SizedBox(width: 10),
                          ButtonText(text: 'Help', color: const Color(0xFF4873A6).withOpacity(0.7),)
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: const Color(0xFF4873A6).withOpacity(0.7),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all( color: const Color(0xFF4873A6).withOpacity(0.7),),
                 
                ),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.logout,
                            size: 18,
                            color: const Color(0xFF4873A6).withOpacity(0.7),
                          ),
                          const SizedBox(width: 10),
                          ButtonText(text: 'Log Out', color: const Color(0xFF4873A6).withOpacity(0.7),)
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: const Color(0xFF4873A6).withOpacity(0.7),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all( color: const Color(0xFF4873A6).withOpacity(0.7),),
                 
                ),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonText(text: 'Privacy Policy', color: const Color(0xFF4873A6).withOpacity(0.7)),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: const Color(0xFF4873A6).withOpacity(0.7),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xFF4873A6).withOpacity(0.7),),
                  
                ),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonText(text: 'Terms of Use', color: const Color(0xFF4873A6).withOpacity(0.7),),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: const Color(0xFF4873A6).withOpacity(0.7),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            ],
          ),
        ),
      ),
    );
  }
}
