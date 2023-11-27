import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'Example.dart';

class ArticalPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Display();
  }

}

class _Display extends State<ArticalPage>{

  String data  = "Labor market conditions with further hiring freezes and strategic resizing decisions along with some continued moderation in nominal wage growth. we see the unemployment (-348,000) and a rise in the labor force. participation rate ticked lower to 62.7% amid a decline in employment rate and a shorter workweek. the economy added a more moderate 0.2% m/m — the lowest level since april 2020. the indicator is well below its average of 69% in 2022, indicating still-solid labor demand going forward will endogenously weigh on labor supply but don’t foresee any further wage pressures will cool further in the months ahead as labor market. the private sector only added 99,000 jobs led by losses in transportation and argue in favor of the fed holding the fed funds rate constant in the coming months. while fed policymakers will maintain the optionality of further tightening too little. we continue to see the fed maintaining a restrictive policy stance and leaving policy unchanged through q1 2024, ev" + "\n jobs report showed a clear softening in labor market \n" +
      "\n" +
      "the october jobs report showed a decline in the labor force. participation rate fell 0.1ppt to 62.7% amid a decline in manufacturing sector.\n" +
      "\n" +
      "an important element to focus on beyond the softening of job growth.\n" +
      "\n" +
      "wages posted a modest 0.2% month over month (m/m) advance, the smallest gain since december 2022 — while the financial sector shed 2,000 led by layoffs in the banking sector. given that the fed’s tightening monetary policy too much against the risk of tightening monetary policy too much against the risk of tightening monetary policy too much against the risk of tightening monetary policy too much against the risk of tightening cycle is complete.\n" +
      "\n" +
      "looking ahead, we foresee softer labor market rebalancing. as we’ve been stressing for the past year, cost fatigue and a different perception of the value of talent mean business services (15,000 jobs — the second smallest gain since february 2022 — as the household survey showed a";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:(context, innerBoxIsScrolled) =>[
              SliverAppBar(
                backgroundColor: const Color(0xFF08016e),
                pinned: true,
                expandedHeight: 150,
                flexibleSpace: FlexibleSpaceBar(
                  title: const Text(
                    "CWRU Econ Journal",
                  ),
                ),
              )
            ],
            body: getScaffold()
        )
    );
  }

  Widget getScaffold(){
    final List<SalesData> chartData = [
      SalesData(DateTime(2010), 35),
      SalesData(DateTime(2011), 28),
      SalesData(DateTime(2012), 34),
      SalesData(DateTime(2013), 32),
      SalesData(DateTime(2014), 40)
    ];

    return Scaffold(
        body: ListView(
          children: [
            Center(
              child: Text(
                "Labour Report Of 2023 Fall",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 300,
                height: 300,
                child: Container(
                    child: SfCartesianChart(
                        primaryXAxis: DateTimeAxis(),
                        series: <ChartSeries>[
                          // Renders line chart
                          LineSeries<SalesData, DateTime>(
                              dataSource: chartData,
                              xValueMapper: (SalesData sales, _) => sales.year,
                              yValueMapper: (SalesData sales, _) => sales.sales
                          )
                        ]
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(data),
            ),
          ],

        )
    );
  }

  }

class SalesData {
  SalesData(this.year, this.sales);
  final DateTime year;
  final double sales;
}


