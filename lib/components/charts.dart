
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Charts extends StatelessWidget {
  const Charts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              centerSpaceRadius: 70,
              sectionsSpace: 0,
              startDegreeOffset: -90,
              sections: PiechartSectionData,
            ),
          ),
    Positioned.fill(child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('29.1',style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white,fontWeight: FontWeight.w600),),
        const Text('of 256GB',style: TextStyle(fontSize: 10),)
      ],
    ))
    
        ],
      ),
    );
  }
}


 var PiechartSectionData = [
      PieChartSectionData(
        value: 20,
        radius: 25,
        color: const Color(0xff26e5ff),
        showTitle: false,
      ),
      PieChartSectionData(
        value: 10,
        radius: 22,
        color: const Color(0xffffcf26),
        showTitle: false,
      ),
      PieChartSectionData(
        value: 15,
        radius: 19,
        color: primaryColor,
        showTitle: false,
      ),
      PieChartSectionData(
        value: 50,
        radius: 16,
        color: const Color(0xffee2727),
        showTitle: false,
      ),
      PieChartSectionData(
        value: 25,
        radius: 13,
        color: primaryColor.withOpacity(0.1),
        showTitle: false,
      )
    ];