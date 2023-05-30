
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartPage extends StatelessWidget {
  const LineChartPage({super.key, required this.isShowingMainData});

  final bool isShowingMainData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height*0.4,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:const Color(0xff4873a6)
                                        .withOpacity(0.7),
        ),
        
        child: LineChart(
          isShowingMainData ? sampleData1 : sampleData2,
          // duration: const Duration(milliseconds: 250),
        ),
      ),
    );
  }

  LineChartData get sampleData1 => LineChartData(
        lineTouchData: lineTouchData1,
        gridData: gridData,
        titlesData: titlesData1,
        borderData: borderData,
        lineBarsData: lineBarsData1,
        minX: 0,
        maxX: 14,
        maxY: 8,
        minY: 0,
      );

  LineChartData get sampleData2 => LineChartData(
        lineTouchData: lineTouchData2,
        gridData: gridData,
        titlesData: titlesData2,
        borderData: borderData,
        // lineBarsData: lineBarsData2,
        minX: 0,
        maxX: 14,
        maxY: 6,
        minY: 0,
      );

  LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.black
        ),
      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles:  AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles:  AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  List<LineChartBarData> get lineBarsData1 => [
        lineChartBarData1_1,
        
      ];

  LineTouchData get lineTouchData2 =>  LineTouchData(
        enabled: false,
      );

  FlTitlesData get titlesData2 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles:  AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles:  AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 10,
      color: Colors.white
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '0h0m';
        break;
      case 2:
        text = '0h30m';
        break;
      case 3:
        text = '1h0m';
        break;
      case 4:
        text = '1h30m';
        break;
      case 5:
        text = '2h0m';
        break;
        case 6:
        text = '2h30m';
        break;
         case 7:
        text = '3h0m';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.center);
  }

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        showTitles: true,
        interval: 1,
        reservedSize: 40,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontSize: 10,
    );
    Widget text;
    switch (value.toInt()) {
      case 2:
        text = const Text('8AM', style: style);
        break;
      case 4:
        text = const Text('9AM', style: style);
        break;
      case 6:
        text = const Text('10AM', style: style);
        break;
         case 8:
        text = const Text('11AM', style: style);
        break;
         case 10:
        text = const Text('12PM', style: style);
        break;
         case 12:
        text = const Text('01PM', style: style);
        break;
      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 8,
      child: text,
    );
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 33,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  FlGridData get gridData =>  FlGridData(show: true,drawVerticalLine: false);

  FlBorderData get borderData => FlBorderData(
        show: true,
        border:  Border(
          bottom:
              BorderSide(color:const Color(0xff4873a6)
                                          .withOpacity(0.7), width: 1),
          left: BorderSide(color:const Color(0xff4873a6)
                                          .withOpacity(0.7), width: 1),
          right: const BorderSide(color: Colors.transparent),
          top: const BorderSide(color: Colors.transparent),
        ),
      );

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        isCurved: true,
        color:Colors.white,
        barWidth: 4,
        isStrokeCapRound: true,
        dotData:  FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 2),
          FlSpot(3, 1.5),
          FlSpot(5, 1.4),
          FlSpot(7, 3.4),
          FlSpot(10, 6),
          FlSpot(12, 2.2),
          FlSpot(13, 1.8),
        ],
      );

}
