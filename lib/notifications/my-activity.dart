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

 List<_SalesData> data = [
    _SalesData('8AM', 10),
    _SalesData('9AM', 28),
    _SalesData('10AM', 34),
    _SalesData('11AM', 32),
    _SalesData('12PM', 40)
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
                SizedBox(height:MediaQuery.of(context).size.height*0.009),
    
     SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                // Chart title
          //      title: ChartTitle(text: 'Half yearly sales analysis'),
                // Enable legend
                legend: Legend(isVisible: true),
                // Enable tooltip
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <ChartSeries<_SalesData, String>>[
                  LineSeries<_SalesData, String>(
                      dataSource: data,
                      xValueMapper: (_SalesData sales, _) => sales.year,
                      yValueMapper: (_SalesData sales, _) => sales.sales,
                   //   name: 'Sales',
                      // Enable data label
                      dataLabelSettings: DataLabelSettings(isVisible: true))
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
            // )
      SizedBox(height:MediaQuery.of(context).size.height*0.009),
      
    
    
    
    
    
              ],
            ),
          ),  
        ),
      ),
    );
  }
}
class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}