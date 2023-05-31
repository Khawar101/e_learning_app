// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class PointsTransactions extends StatefulWidget {
//   const PointsTransactions({super.key});

//   @override
//   State<PointsTransactions> createState() => _PointsTransactionsState();
// }

// class _PointsTransactionsState extends State<PointsTransactions> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           elevation: 0,
//           backgroundColor: Colors.white,
//           leading: const Padding(
//             padding:  EdgeInsets.only(left: 20),
//             child: Icon(
//               Icons.menu,
//               color: Colors.black54,
//               size: 22,
//             ),
//           ),
//           title: const CircleAvatar(
//             radius: 18,
//             backgroundColor: Colors.blue,
//           ),

//           // dehaze_outlined,
//           //  vertical_distribute,
//           actions: [
//             GestureDetector(
//               onTap: () {},
//               child: const Padding(
//                 padding: EdgeInsets.only(right: 15),
//                 child: Icon(
//                   Icons.vertical_distribute,
//                   color: Colors.black54,
//                   size: 22,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(right: 15, top: 10, bottom: 10),
//               child: Container(
//                 // height: 20,
//                 width: 40,

//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Colors.grey,
//                 ),
//               ),
//             )
//           ]),
//       body: SingleChildScrollView(
        
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 'Points Transactions',
//                 style: GoogleFonts.ibmPlexSans(
//                     color: Colors.black,
//                     fontSize: 22,
//                     fontWeight: FontWeight.w600),
//               ),
//               const SizedBox(height: 10),
//               Container(
//                 height: 50,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.black26),
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 20),
//                   child: Row(
//                     children: [
//                       Text(
//                         'Home',
//                         style: GoogleFonts.ibmPlexSans(
//                             color: Colors.black,
//                             fontSize: 14,
//                             fontWeight: FontWeight.w400),
//                       ),
//                       const SizedBox(width: 8),
//                       const Icon(
//                         Icons.arrow_forward_ios_outlined,
//                         size: 12,
//                       ),
//                       const SizedBox(width: 8),
//                       Text(
//                         'Points',
//                         style: GoogleFonts.ibmPlexSans(
//                             color: Colors.black,
//                             fontSize: 14,
//                             fontWeight: FontWeight.w400),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 25),
//               Container(
//                 height: 50,
//                 width: MediaQuery.of(context).size.width * 0.7,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: const Color.fromARGB(255, 7, 36, 85)),
//                 child: Center(
//                     child: Text(
//                   'Balance:0.000000000000 Points',
//                   style: GoogleFonts.ibmPlexSans(
//                       color: Colors.white,
//                       fontSize: 14,
//                       fontWeight: FontWeight.w400),
//                 )),
//               ),
//               const SizedBox(height: 15),
//               Container(
//                 height: 50,
//                 width: MediaQuery.of(context).size.width * 0.5,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: const Color.fromARGB(255, 7, 36, 85)),
//                 child: Center(
//                     child: Text(
//                   'Required Points 1000',
//                   style: GoogleFonts.ibmPlexSans(
//                       color: Colors.white,
//                       fontSize: 14,
//                       fontWeight: FontWeight.w400),
//                 )),
//               ),
//               const SizedBox(height: 15),
//               Text(
//                 'You do not have sufficient points to redeem',
//                 style: GoogleFonts.ibmPlexSans(
//                     color: Colors.black54,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w400),
//               ),
//               const SizedBox(height: 25),
//               Container(
//                 height: 50,
//                 width: double.infinity,
//                 decoration: const BoxDecoration(
//                     border: Border(bottom: BorderSide(color: Colors.black38)),
//                     color: Colors.black12),
//                 child: Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                   child: Text(
//                     'Point Earning & Redemption',
//                     style: GoogleFonts.ibmPlexSans(
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w400),
//                   ),
//                 ),
//               ),
//               ListView.builder(
//                   physics: const NeverScrollableScrollPhysics(),
//                   shrinkWrap: true,
//                   itemCount: 4,
//                   itemBuilder: (BuildContext context, int index) {
//                     return Container(
//                       height: 50,
//                       width: double.infinity,
//                       decoration: const BoxDecoration(
//                           border:
//                               Border(bottom: BorderSide(color: Colors.black38)),
//                           color: Colors.white),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             index == 0
//                                 ? 'Flat Earning:'
//                                 : index == 1
//                                     ? 'Crypto Earnings'
//                                     : index == 2
//                                         ? 'Min Redeem'
//                                         : 'Redeem Value',
//                             style: GoogleFonts.ibmPlexSans(
//                                 color: Colors.black, fontSize: 15),
//                           ),
//                           Text(
//                             index == 0
//                                 ? '1 %'
//                                 : index == 1
//                                     ? '1 %'
//                                     : index == 2
//                                         ? '1000 Points'
//                                         : '1 USD =1 %',
//                             style: GoogleFonts.ibmPlexSans(
//                                 color: Colors.black, fontSize: 15),
//                           ),
//                         ],
//                       ),
//                     );
//                   }),
//                   const SizedBox(height: 15),
//                   DataTable(
//                    headingRowColor: MaterialStateColor.resolveWith((states) {return const Color.fromARGB(255, 6, 37, 63);},),
                  
//                   checkboxHorizontalMargin: 0,
//                   horizontalMargin: 0,
//                     columnSpacing: 20,
                    
//                     dataRowMinHeight: 30,
//                     dataRowMaxHeight: 60,
//                     columns:  const <DataColumn>[
//                         DataColumn(
                          
//                           label: Expanded(
//                             child: Text(
//                               '  Date',
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ),
//                         DataColumn(
//                           label: Expanded(
//                             child: Text(
//                               'Trx',
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ),
//                         DataColumn(
//                           label: Expanded(
//                             child: Text(
//                               'Points',
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ),
//                          DataColumn(
//                           label: Expanded(
//                             child: Text(
//                               'Post\nBalance',
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ),
//                       ], 
//                   rows:  const <DataRow>[
//                          DataRow(
//                           cells: <DataCell>[
                            
//                              DataCell(SizedBox(width: 80, child: Text('2023-05-30\n09:15 PM'))),
//                             DataCell(SizedBox(width: 60, child: Text('0'))),
//                              DataCell(SizedBox(width: 60, child: Text('+50.00 Points'))),
//                              DataCell(SizedBox(width: 60, child: Text('50.00 Points'))),
                            
//                           ],
//                         ),
//                         DataRow(
//                           cells: <DataCell>[

//                                DataCell(SizedBox(width: 80, child: Text('2023-05-30\n09:15 PM'))),
//                             DataCell(SizedBox(width: 60, child:  Text('3243544'))),
//                                DataCell(SizedBox(width: 60, child: Text('+50.00 Points'))),
//                              DataCell(SizedBox(width: 60, child: Text('50.00 Points'))),
                            
//                           ],
//                         ),
//                         DataRow(
//                           cells: <DataCell>[
//                              DataCell(SizedBox(width: 80, child: Text('2023-05-30\n09:15 PM'))),
//                             DataCell(SizedBox(width: 60, child:  Text('3243544'))),
//                                DataCell(SizedBox(width: 60, child: Text('20500.00 Points'))),
//                              DataCell(SizedBox(width: 60, child: Text('50.00 Points'))),
//                           ],
//                         ),
//                       ],
//                   ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
