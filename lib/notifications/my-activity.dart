// ignore: file_names
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:google_fonts/google_fonts.dart';

class MyActivity extends StatefulWidget {
  const MyActivity({super.key});

  @override
  State<MyActivity> createState() => _MyActivityState();
}

class _MyActivityState extends State<MyActivity> {

 List<_HoursData> Time = [
    _HoursData('8AM', 6),
    _HoursData('9AM', 1),
    _HoursData('10AM', 7),
    _HoursData('11AM',2),
    _HoursData('12PM', 4),
    _HoursData('1PM', 5),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
         backgroundColor: const Color(0xffe5f1f8),
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
                      "My Activity",
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
                SizedBox(height:MediaQuery.of(context).size.height*0.02),
    
     SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                // Chart title
          //      title: ChartTitle(text: 'Half yearly sales analysis'),
                // Enable legend
                legend: Legend(isVisible: true),
                // Enable tooltip
                tooltipBehavior: TooltipBehavior(enable: false),
                series: <ChartSeries<_HoursData, String>>[
                  LineSeries<_HoursData, String>(
                      dataSource: Time,
                      xValueMapper: (_HoursData times, _) => times.Time,
                      yValueMapper: (_HoursData times, _) => times.hours,
                     

                      name: 'Activity',
                      // Enable data label
                      dataLabelSettings: const DataLabelSettings(isVisible: false))
                ]),
            // Expanded(
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     //Initialize the spark charts widget
            //     child: SfSparkLineChart.custom(
            //       //Enable the trackball
            //       trackball: SparkChartTrackball(
            //           activationMode: SparkChartActivationMode.tap),
            //       //Enable marker
            //       marker: SparkChartMarker(
            //           displayMode: SparkChartMarkerDisplayMode.all),
            //       //Enable data label
            //       labelDisplayMode: SparkChartLabelDisplayMode.all,
            //       xValueMapper: (int index) => data[index].year,
            //       yValueMapper: (int index) => data[index].sales,
            //       dataCount: 5,
            //     ),
            //   ),
            // ),
      SizedBox(height:MediaQuery.of(context).size.height*0.1),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width*0.1
            ),
            child: Container(
       
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                 color: Colors.blue,
              ),
              child: TabBar(
                          isScrollable: false,
                        //  indicatorColor: const Color(0xff3787ff),
                         indicatorSize: TabBarIndicatorSize.tab,
                           indicatorPadding: const EdgeInsets.only(left: 5, right: 5,top: 5,bottom: 5),
                          unselectedLabelColor: Colors.black,
                          labelColor: Colors.black,
                         indicator: BoxDecoration(
                   color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    ),
                          tabs: [
                            Tab(
                              
                           
                               child: Align(
                                alignment: Alignment.center,
                                child: Text("Day",style: GoogleFonts.ibmPlexSans(fontWeight: FontWeight.w700,fontSize: 18),))
                            ),
                            Tab(
                            
                        
                              child: Text("Week",style: GoogleFonts.ibmPlexSans(fontWeight: FontWeight.w700,fontSize: 18),) 
                               ),
                           
                          ],
                  //        controller: _tabController,
                     //         indicatorSize: TabBarIndicatorSize.tab,
                        ),
            ),
          ),
       
          Expanded(
            child: TabBarView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width*0.4,
                      decoration: BoxDecoration(
                       color: Colors.blue, 
                       borderRadius: BorderRadius.circular(20)
                      ),
                     child: Padding(
                       padding:EdgeInsets.symmetric(
                        horizontal:MediaQuery.of(context).size.width*0.03,
                        vertical: MediaQuery.of(context).size.height*0.025 
                       ),
                       child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(225, 255, 193, 7),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: const Center(child: Icon(Icons.done_outlined,color: Colors.white,)),
                              ),
                              const SizedBox(width: 12),
                              Text('Class \nCompleted',style: GoogleFonts.ibmPlexSans(color: Colors.white),)
                            ],
                          ),
                            Text('12',style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 26),)
                        ],
                       ),
                     ),
                    ),
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width*0.4,
                      decoration: BoxDecoration(
                       color: Colors.blue, 
                       borderRadius: BorderRadius.circular(20)
                      ),
                     child: Padding(
                       padding:EdgeInsets.symmetric(
                        horizontal:MediaQuery.of(context).size.width*0.03,
                        vertical: MediaQuery.of(context).size.height*0.025 
                       ),
                       child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                 color: Colors.white, 
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: const Center(child: Icon(Icons.access_time_outlined,color: Colors.black,)),
                              ),
                              const SizedBox(width: 12),
                              Text('Time \nDuration',style: GoogleFonts.ibmPlexSans(color: Colors.white),)
                            ],
                          ),
                            Text('1h 46m',style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 26),)
                        ],
                       ),
                     ),
                    ),
          
                  ],
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width*0.4,
                      decoration: BoxDecoration(
                       color: Colors.blue, 
                       borderRadius: BorderRadius.circular(20)
                      ),
                     child: Padding(
                       padding:EdgeInsets.symmetric(
                        horizontal:MediaQuery.of(context).size.width*0.03,
                        vertical: MediaQuery.of(context).size.height*0.025 
                       ),
                       child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(225, 255, 193, 7),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: const Center(child: Icon(Icons.done_outlined,color: Colors.white,)),
                              ),
                              const SizedBox(width: 12),
                              Text('Class \nCompleted',style: GoogleFonts.ibmPlexSans(color: Colors.white),)
                            ],
                          ),
                            Text('12',style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 26),)
                        ],
                       ),
                     ),
                    ),
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width*0.4,
                      decoration: BoxDecoration(
                       color: Colors.blue, 
                       borderRadius: BorderRadius.circular(20)
                      ),
                     child: Padding(
                       padding:EdgeInsets.symmetric(
                        horizontal:MediaQuery.of(context).size.width*0.03,
                        vertical: MediaQuery.of(context).size.height*0.025 
                       ),
                       child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                 color: Colors.white, 
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: const Center(child: Icon(Icons.access_time_outlined,color: Colors.black,)),
                              ),
                              const SizedBox(width: 12),
                              Text('Time \nDuration',style: GoogleFonts.ibmPlexSans(color: Colors.white),)
                            ],
                          ),
                            Text('1h 46m',style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 26),)
                        ],
                       ),
                     ),
                    ),
          
                  ],
                ),
              ]
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
class _HoursData {
  _HoursData( this.Time, this.hours);

  final String Time;
  final double hours;
}