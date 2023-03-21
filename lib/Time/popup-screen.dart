// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:google_fonts/google_fonts.dart';

// class PopUpScreen extends StatefulWidget {
//   const PopUpScreen({super.key});

//   @override
//   State<PopUpScreen> createState() => _PopUpScreenState();
// }

// class _PopUpScreenState extends State<PopUpScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        backgroundColor: const Color(0xffE5E5E5),
//     body:  SafeArea(
//       child: Center(
//         child: TextButton(

//           onPressed: () => showDialog<String>(
//             context: context,
//             builder: (BuildContext context) => AlertDialog(
//               shape:const RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(15),
//             ),
//           ),

//              //,style: GoogleFonts.ibmPlexSans(fontSize:27,fontWeight: FontWeight.w500 ),
//               title:RichText(
//                 text: const TextSpan(
//                     text: 'Clooking in!',
//                     style: TextStyle(
//                         color: Colors.black, fontSize: 24,fontWeight: FontWeight.w500),
//                     children: <TextSpan>[
//                       TextSpan(text: '\n GOOD JOB',
//                           style: TextStyle(
//                                fontSize: 15,color: Colors.black),

//                       ),
//                     ]
//                 ),
//               ),

//               content: Container(
//                 height: 300,
//                 width: MediaQuery.of(context).size.width*0.9,
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text("Learned Today",style: GoogleFonts.ibmPlexSans(color: Colors.black,fontSize: 14),),
//                         Text("totaly hours",style: GoogleFonts.ibmPlexSans(color: Colors.black,fontSize: 14),)
//                       ],
//                     ),
//                     const SizedBox(height: 10),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                        RichText(
//                 text:  TextSpan(
//                     text: '46',
//                     style:  GoogleFonts.ibmPlexSans(color: Colors.blue,fontSize: 14),

//                     children: <TextSpan>[
//                       TextSpan(text: ' min',  style:  GoogleFonts.ibmPlexSans(color: Colors.black,fontSize: 14),
//                       ),
//                     ]
//                 ),
//               ),

//         RichText(
//                 text: TextSpan(
//                     text: '468',  style:  GoogleFonts.ibmPlexSans(color: Colors.blue,fontSize: 14),
//                     children: <TextSpan>[
//                       TextSpan(
//                         text: ' hrs',  style:  GoogleFonts.ibmPlexSans(color: Colors.black,fontSize: 14),
//                       ),
//                     ]
//                 ),
//               ),
//              ],
//             ),
//               const SizedBox(height: 18),

//               Align(
//                 alignment: Alignment.topLeft,
//                 child: Text("Totally days",  style:  GoogleFonts.ibmPlexSans(color: Colors.black,fontSize: 14),)),

//                 const SizedBox(height: 10),

//                 Align(
//                 alignment: Alignment.topLeft,
//                 child: RichText(
//                 text: TextSpan(
//                     text: '554',  style:  GoogleFonts.ibmPlexSans(color: Colors.blue,fontSize: 14),
//                     children: <TextSpan>[
//                       TextSpan(
//                         text: ' days',  style:  GoogleFonts.ibmPlexSans(color: Colors.black,fontSize: 14),
//                       ),
//                     ]
//                 ),
//               ),
//                 ),
//                 const SizedBox(height: 30),
//                 Text("Record of this week",  style:  GoogleFonts.ibmPlexSans(color: Colors.black,fontSize: 17),),
//                 const SizedBox(height: 14),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children:const [
//                     CircleAvatar(
//                       radius: 16,
//                       backgroundColor: Color.fromARGB(15, 0, 0, 0),
//                       child: Center(child: Text("1",style: TextStyle(color: Colors.black),)),
//                     ),
//                     CircleAvatar(
//                       radius: 16,
//                       backgroundColor: Color.fromARGB(15, 0, 0, 0),
//                       child: Center(child: Text("2",style: TextStyle(color: Colors.black),)),
//                     ),
//                     CircleAvatar(
//                       radius: 16,
//                       backgroundColor: Color.fromARGB(15, 0, 0, 0),
//                       child: Center(child: Text("3",style: TextStyle(color: Colors.black),)),
//                     ),
//                     CircleAvatar(
//                       radius: 16,
//                       backgroundColor: Color.fromARGB(15, 0, 0, 0),
//                       child: Center(child: Text("4",style: TextStyle(color: Colors.black),)),
//                     ),
//                     CircleAvatar(
//                       radius: 16,
//                       backgroundColor: Color.fromARGB(15, 0, 0, 0),
//                       child: Center(child: Text("5",style: TextStyle(color: Colors.black),)),
//                     ),
//                     CircleAvatar(
//                       radius: 16,
//                       backgroundColor: Color.fromARGB(15, 0, 0, 0),
//                       child: Center(child: Text("6",style: TextStyle(color: Colors.black),)),
//                     ),
//                     CircleAvatar(
//                       radius: 16,
//                       backgroundColor: Color.fromARGB(15, 0, 0, 0),
//                       child: Center(child: Text("7",style: TextStyle(color: Colors.black),)),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 30),
//                 Container(
//                   height: 50,
//                   width: MediaQuery.of(context).size.width*0.5,

//                   decoration: BoxDecoration(
//                   color: const Color(0xff3787ff),
//                   borderRadius: BorderRadius.circular(25),
//                   ),
//                  child: Center(child:  Text('Share',style: TextStyle(color: Colors.white),)),
//                 ),

//                   ],
//                 ),
//               ),

//               actions: <Widget>[
//                 TextButton(
//                   onPressed: () => Navigator.pop(context, 'Cancel'),
//                   child: const Text('Cancel'),
//                 ),
//                 TextButton(
//                   onPressed: () => Navigator.pop(context, 'OK'),
//                   child: const Text('OK'),
//                 ),
//               ],
//             ),
//           ),
//           child: const Text('Show Dialog'),

//         ),
//       ),
//     ),
//     );
//   }
// }
