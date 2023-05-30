
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_learning_app/log-in-screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final List<Widget> items = [
          const SplashContainer1(),
          const SplashContainer2(),
          const SplashContainer3(),
          const SplashContainer4(),
          const SplashContainer5(),
];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return CarouselSlider(
            options: CarouselOptions(
              height: height,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              // autoPlay: false,
              
            ),
            items:items,
          );  
        },
      ),
    );
  }
}



class SplashContainer1 extends StatefulWidget {
  const SplashContainer1({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashContainer1State createState() => _SplashContainer1State();
}

class _SplashContainer1State extends State<SplashContainer1> {
  @override
 void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SplashContainer2()),
      );
    });
  }
   @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color(0xffe5f1f8),
     body: SafeArea(
      child:Stack(
        children: [
          Center(child: Text('Education\nApp',textAlign: TextAlign.center,style: GoogleFonts.ibmPlexSans(
            color: Colors.black,fontSize: 26,fontWeight: FontWeight.w500),)),
            Padding(
              padding: const EdgeInsets.all(60),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.amber
                ),
                 alignment:
                     FractionalOffset.topRight,
                     transform: Matrix4.identity()
                     ..rotateZ(
                     15 * 3.1415927 / -360),
                child:  const Center(
                  child: Icon(Icons.book,color: Colors.white,)),
              ),
            ),
            Padding(
              padding:EdgeInsets.only(
                left:MediaQuery.of(context).size.width*0.8 ,
                top: MediaQuery.of(context).size.height*0.3
              ),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue
                ),
                child: Center(child: Image.asset('assets/icons/graduation-cap.png',width: 30,)),
                
              ),
            ),
             Padding(
              padding:EdgeInsets.only(
                left:MediaQuery.of(context).size.width*0.1 ,
                top: MediaQuery.of(context).size.height*0.4
              ),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.amber
                ),
                child: Center(child: Container(
                  height: 30,width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white)
                  ),
                  child: Center(child: Text('A+',style: GoogleFonts.ibmPlexSans(color: Colors.white,),)),
                )),
                
              ),
            ),
            Padding(
              padding:EdgeInsets.only(
                left:MediaQuery.of(context).size.width*0.39 ,
                top: MediaQuery.of(context).size.height*0.58
              ),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Colors.grey
                ),
                child: Center(child: Image.asset('assets/icons/react-native-50.png',width: 40,)),
                
              ),
            ),
            Padding(
              padding:EdgeInsets.only(
                left:MediaQuery.of(context).size.width*0.8 ,
                top: MediaQuery.of(context).size.height*0.74
              ),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue
                ),
                child: const Center(child:Icon(Icons.phone_android_sharp,color: Colors.white,size: 18,)),
                
              ),
            ),
             Padding(
              padding:EdgeInsets.only(
                  left:MediaQuery.of(context).size.width*0.1 ,
                top: MediaQuery.of(context).size.height*0.86
              ),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.orangeAccent
                ),
                 alignment:
                     FractionalOffset.topRight,
                     transform: Matrix4.identity()
                     ..rotateZ(
                     15 * 3.1415927 / -360),
                child:  Center(
                  child: Image.asset('assets/icons/book-64.png',width: 27,)),
              ),
            ),



        ],
       ), 
      ),
    );
  }
}
//screen2
class SplashContainer2 extends StatefulWidget {
  const SplashContainer2({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashContainer2State createState() => _SplashContainer2State();
}

class _SplashContainer2State extends State<SplashContainer2> {

   @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color(0xffe5f1f8),
     body: SafeArea(
      child: Stack(
       children: [
        SizedBox(
          height: MediaQuery.of(context).size.height*0.5,
       //   width: double.infinity,
          child: Image.asset('assets/images/girl-images-1.jpg',fit: BoxFit.cover,)),
        Align(
          alignment: Alignment.bottomCenter,
          child: Transform.scale(
            scale: 1.65,
         
            origin: const Offset(-5, 30),
        // scaleX: 20,
        // scaleY: 20,
            child: Container(
              height:MediaQuery.of(context).size.height*0.4,
             width: double.infinity,
              decoration: const BoxDecoration(
               color: Colors.white, 
               borderRadius: BorderRadius.only(
                topLeft: Radius.circular(300),
                topRight: Radius.circular(290)
               ),
              ),
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*0.06),
                  Text('Online Learning\nPlatform',textAlign: TextAlign.center,style: GoogleFonts.ibmPlexSans(
                    color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                     SizedBox(height: MediaQuery.of(context).size.height*0.01),
                      Text('A handful of model sentence structures\nto generate lorem which looks reason \nable.',textAlign: TextAlign.center,style: GoogleFonts.ibmPlexSans(
                    color: Colors.black,fontSize: 8,fontWeight: FontWeight.w600),),
                     SizedBox(height: MediaQuery.of(context).size.height*0.044),
                      CircularStepProgressIndicator(
        totalSteps: 4,
        currentStep: 1,
        stepSize: 2,
        selectedColor: Colors.lightBlue,
        unselectedColor: Colors.grey[200],
        padding: 0,
        width: 40,
        height: 40,
        selectedStepSize: 2,
        roundedCap: (_, __) => true,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) => const SplashContainer3())));
            },
            child: Container(
              height: 20,width: 20,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue
              ),
              child: const Icon(Icons.arrow_forward,color: Colors.white,size: 16,),
            ),
          ),
        ),
    ),
                ],
              )
            ),
          ),
        ),
         Padding(
              padding:EdgeInsets.only(
                left:MediaQuery.of(context).size.width*0.8 ,
                top: MediaQuery.of(context).size.height*0.43
              ),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.orangeAccent
                ),
                child: Center(child: Container(
                  height: 30,width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white)
                  ),
                  child: Center(child: Text('A+',style: GoogleFonts.ibmPlexSans(color: Colors.white,),)),
                )),  
              ),
            ),
             Padding(
              padding:EdgeInsets.only(
                  left:MediaQuery.of(context).size.width*0.1 ,
                top: MediaQuery.of(context).size.height*0.16
              ),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.deepOrangeAccent
                ),
                 alignment:
                     FractionalOffset.topRight,
                     transform: Matrix4.identity()
                     ..rotateZ(
                     15 * 3.1415927 / -360),
                child:  Center(
                  child: Image.asset('assets/icons/book-64.png',width: 27,)),
              ),
            ),
             Padding(
              padding:EdgeInsets.only(
                left:MediaQuery.of(context).size.width*0.09 ,
                top: MediaQuery.of(context).size.height*0.43
              ),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Colors.grey
                ),
                child: Center(child: Image.asset('assets/icons/react-native-50.png',width: 40,)),
                
              ),
            ),
             Padding(
              padding:EdgeInsets.only(
                left:MediaQuery.of(context).size.width*0.4 ,
                top: MediaQuery.of(context).size.height*0.06
              ),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue
                ),
                child: Center(child: Image.asset('assets/icons/graduation-cap.png',width: 30,)),
                
              ),
            ),

       ],
      ),
      ),
    );
  }
}
//screen 3
class SplashContainer3 extends StatefulWidget {
  const SplashContainer3({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashContainer3State createState() => _SplashContainer3State();
}

class _SplashContainer3State extends State<SplashContainer3> {

   @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color(0xffe5f1f8),
     body: SafeArea(
      child: Stack(
       children: [
        SizedBox(
          height: MediaQuery.of(context).size.height*0.5,
       //   width: double.infinity,
          child: Image.asset('assets/images/girl-images-2.jpg',fit: BoxFit.cover,)),
        Align(
          alignment: Alignment.bottomCenter,
          child: Transform.scale(
            scale: 1.65,
         
            origin: const Offset(-5, 30),
        // scaleX: 20,
        // scaleY: 20,
            child: Container(
              height:MediaQuery.of(context).size.height*0.4,
             width: double.infinity,
              decoration: const BoxDecoration(
               color: Colors.white, 
               borderRadius: BorderRadius.only(
                topLeft: Radius.circular(300),
                topRight: Radius.circular(290)
               ),
              ),
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*0.06),
                  Text('Learn on your\nSchedule',textAlign: TextAlign.center,style: GoogleFonts.ibmPlexSans(
                    color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                     SizedBox(height: MediaQuery.of(context).size.height*0.01),
                      Text('A handful of model sentence structures\nto generate lorem which looks reason \nable.',textAlign: TextAlign.center,style: GoogleFonts.ibmPlexSans(
                    color: Colors.black,fontSize: 8,fontWeight: FontWeight.w600),),
                     SizedBox(height: MediaQuery.of(context).size.height*0.044),
                      CircularStepProgressIndicator(
        totalSteps: 4,
        currentStep: 2,
        stepSize: 2,
        selectedColor: Colors.lightBlue,
        unselectedColor: Colors.grey[200],
        padding: 0,
        width: 40,
        height: 40,
        selectedStepSize: 2,
        roundedCap: (_, __) => true,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) => const SplashContainer4())));
            },
            child: Container(
              height: 20,width: 20,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue
              ),
              child: const Icon(Icons.arrow_forward,color: Colors.white,size: 16,),
            ),
          ),
        ),
    ),
                ],
              )
            ),
          ),
        ),

            Padding(
              padding:EdgeInsets.only(
                left:MediaQuery.of(context).size.width*0.06 ,
                top: MediaQuery.of(context).size.height*0.05
              ),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue
                ),
                child: const Center(child:Icon(Icons.phone_android_sharp,color: Colors.white,size: 18,)),
                
              ),
            ),
             Padding(
              padding:EdgeInsets.only(
                left:MediaQuery.of(context).size.width*0.8 ,
                top: MediaQuery.of(context).size.height*0.05
              ),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Colors.grey
                ),
                child: Center(child: Image.asset('assets/icons/react-native-50.png',width: 40,)),
                
              ),
            ),
             Padding(
              padding:EdgeInsets.only(
                left:MediaQuery.of(context).size.width*0.06 ,
                top: MediaQuery.of(context).size.height*0.44
              ),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue
                ),
                child: Center(child: Image.asset('assets/icons/graduation-cap.png',width: 30,)),
                
              ),
            ),
             Padding(
              padding:EdgeInsets.only(
                left:MediaQuery.of(context).size.width*0.8 ,
                top: MediaQuery.of(context).size.height*0.44
              ),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.orange
                ),
                 alignment:
                     FractionalOffset.topRight,
                     transform: Matrix4.identity()
                     ..rotateZ(
                     15 * 3.1415927 / -360),
                child:   const Center(
                  child: Icon(Icons.book,color: Colors.white,)),
              ),
            ),
            

       ],
      ),
      ),
    );
  }
}
//screen4
class SplashContainer4 extends StatefulWidget {
  const SplashContainer4({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashContainer4State createState() => _SplashContainer4State();
}

class _SplashContainer4State extends State<SplashContainer4> {

   @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color(0xffe5f1f8),
     body: SafeArea(
      child: Stack(
       children: [
        SizedBox(
          height: MediaQuery.of(context).size.height*0.5,
       //   width: double.infinity,
          child: Image.asset('assets/images/girl-images-3.webp',fit: BoxFit.cover,)),
        Align(
          alignment: Alignment.bottomCenter,
          child: Transform.scale(
            scale: 1.65,
         
            origin: const Offset(-5, 30),
        // scaleX: 20,
        // scaleY: 20,
            child: Container(
              height:MediaQuery.of(context).size.height*0.4,
             width: double.infinity,
              decoration: const BoxDecoration(
               color: Colors.white, 
               borderRadius: BorderRadius.only(
                topLeft: Radius.circular(300),
                topRight: Radius.circular(290)
               ),
              ),
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*0.06),
                  Text('Ready to find\na Course',textAlign: TextAlign.center,style: GoogleFonts.ibmPlexSans(
                    color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                     SizedBox(height: MediaQuery.of(context).size.height*0.01),
                      Text('A handful of model sentence structures\nto generate lorem which looks reason \nable.',textAlign: TextAlign.center,style: GoogleFonts.ibmPlexSans(
                    color: Colors.black,fontSize: 8,fontWeight: FontWeight.w600),),
                     SizedBox(height: MediaQuery.of(context).size.height*0.044),
                      CircularStepProgressIndicator(
        totalSteps: 4,
        currentStep: 3,
        stepSize: 2,
        selectedColor: Colors.lightBlue,
        unselectedColor: Colors.grey[200],
        padding: 0,
        width: 40,
        height: 40,
        selectedStepSize: 2,
        roundedCap: (_, __) => true,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) => const SplashContainer5())));
            },
            child: Container(
              height: 20,width: 20,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue
              ),
              child: const Icon(Icons.arrow_forward,color: Colors.white,size: 16,),
            ),
          ),
        ),
    ),
                ],
              )
            ),
          ),
        ),

            Padding(
              padding:EdgeInsets.only(
                left:MediaQuery.of(context).size.width*0.06 ,
                top: MediaQuery.of(context).size.height*0.4
              ),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue
                ),
                child: const Center(child:Icon(Icons.phone_android_sharp,color: Colors.white,size: 18,)),
                
              ),
            ),
             Padding(
              padding:EdgeInsets.only(
                left:MediaQuery.of(context).size.width*0.8 ,
                top: MediaQuery.of(context).size.height*0.2
              ),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Colors.grey
                ),
                child: Center(child: Image.asset('assets/icons/react-native-50.png',width: 40,)),
                
              ),
            ),
               Padding(
              padding:EdgeInsets.only(
                left:MediaQuery.of(context).size.width*0.22 ,
                top: MediaQuery.of(context).size.height*0.03
              ),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.orangeAccent
                ),
                child: Center(child: Container(
                  height: 30,width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white)
                  ),
                  child: Center(child: Text('A+',style: GoogleFonts.ibmPlexSans(color: Colors.white,),)),
                )),  
              ),
            ),
             Padding(
              padding:EdgeInsets.only(
                  left:MediaQuery.of(context).size.width*0.83 ,
                top: MediaQuery.of(context).size.height*0.35
              ),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.orangeAccent
                ),
                 alignment:
                     FractionalOffset.topRight,
                     transform: Matrix4.identity()
                     ..rotateZ(
                     15 * 3.1415927 / -360),
                child:  Center(
                  child: Image.asset('assets/icons/book-64.png',width: 27,)),
              ),
            ),
            

       ],
      ),
      ),
    );
  }
}


//screen5
class SplashContainer5 extends StatefulWidget {
  const SplashContainer5({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashContainer5State createState() => _SplashContainer5State();
}

class _SplashContainer5State extends State<SplashContainer5> {

   @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color(0xffe5f1f8),
     body: SafeArea(
      child: Stack(
       children: [
        SizedBox(
          height: MediaQuery.of(context).size.height*0.5,
       //   width: double.infinity,
          child: Image.asset('assets/images/girl-images-4.jpg',fit: BoxFit.cover,)),
        Align(
          alignment: Alignment.bottomCenter,
          child: Transform.scale(
            scale: 1.65,
         
            origin: const Offset(-5, 30),
        // scaleX: 20,
        // scaleY: 20,
            child: Container(
              height:MediaQuery.of(context).size.height*0.4,
             width: double.infinity,
              decoration: const BoxDecoration(
               color: Colors.white, 
               borderRadius: BorderRadius.only(
                topLeft: Radius.circular(300),
                topRight: Radius.circular(290)
               ),
              ),
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*0.06),
                  Text('Explore it\nToday!',textAlign: TextAlign.center,style: GoogleFonts.ibmPlexSans(
                    color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                     SizedBox(height: MediaQuery.of(context).size.height*0.01),
                      Text('A handful of model sentence structures\nto generate lorem which looks reason \nable.',textAlign: TextAlign.center,style: GoogleFonts.ibmPlexSans(
                    color: Colors.black,fontSize: 8,fontWeight: FontWeight.w600),),
                     SizedBox(height: MediaQuery.of(context).size.height*0.044),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const LogInScreen()));
                        },
                        child: CircularStepProgressIndicator(
                              totalSteps: 4,
                              currentStep: 4,
                              stepSize: 2,
                              selectedColor: Colors.lightBlue,
                              unselectedColor: Colors.grey[200],
                              padding: 0,
                              width: 40,
                              height: 40,
                              selectedStepSize: 2,
                              roundedCap: (_, __) => true,
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Container(
                                  height: 20,width: 20,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue
                                  ),
                                  child: const Icon(Icons.arrow_forward,color: Colors.white,size: 16,),
                                ),
                              ),
                          ),
                      ),
                ],
              )
            ),
          ),
        ),
         Padding(
              padding:EdgeInsets.only(
                left:MediaQuery.of(context).size.width*0.8 ,
                top: MediaQuery.of(context).size.height*0.33
              ),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.orangeAccent
                ),
                child: Center(child: Container(
                  height: 30,width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white)
                  ),
                  child: Center(child: Text('A+',style: GoogleFonts.ibmPlexSans(color: Colors.white,),)),
                )),  
              ),
            ),
             Padding(
              padding:EdgeInsets.only(
                  left:MediaQuery.of(context).size.width*0.04 ,
                top: MediaQuery.of(context).size.height*0.1
              ),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.deepOrangeAccent
                ),
                 alignment:
                     FractionalOffset.topRight,
                     transform: Matrix4.identity()
                     ..rotateZ(
                     15 * 3.1415927 / -360),
                child:  Center(
                  child: Image.asset('assets/icons/book-64.png',width: 27,)),
              ),
            ),
             Padding(
              padding:EdgeInsets.only(
                left:MediaQuery.of(context).size.width*0.04 ,
                top: MediaQuery.of(context).size.height*0.36
              ),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Colors.grey
                ),
                child: Center(child: Image.asset('assets/icons/react-native-50.png',width: 40,)),
                
              ),
            ),
             Padding(
              padding:EdgeInsets.only(
                left:MediaQuery.of(context).size.width*0.5 ,
                top: MediaQuery.of(context).size.height*0.06
              ),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue
                ),
                child: Center(child: Image.asset('assets/icons/graduation-cap.png',width: 30,)),
                
              ),
            ),

       ],
      ),
      ),
    );
  }
}
