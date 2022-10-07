import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:test_app/data/pie_data.dart';
import 'package:test_app/resources/app_strings.dart';

class IndicatorWidget extends StatelessWidget {
  const IndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final getData = GetData().getData();
    return Stack(
      fit: StackFit.loose,
      alignment: AlignmentDirectional.center,
      children: [
        SfCircularChart(
          series: <CircularSeries>[
            DoughnutSeries<Data, String>(
                dataSource: getData,
                pointColorMapper: (Data data, _) => data.color,
                xValueMapper: (Data data, _) => data.name,
                yValueMapper: (Data data, _) => data.percent,
                innerRadius: '80%'),
          ],
        ),
        Column(
          children: const [
            Text(
              AppStrings.sumPercentage,
              style: TextStyle(
                fontSize: 36.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
             AppStrings.balanceCashback,
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.white,
                fontFamily: 'OpenSans',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
