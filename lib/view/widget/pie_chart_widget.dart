import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}

class PirChartWidget extends StatelessWidget {
  const PirChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(
        'David',
        25,
        kVideosColor,
      ),
      ChartData(
        'Steve',
        38,
        kDocsColor,
      ),
      ChartData(
        'Jack',
        34,
        kOtherColor,
      ),
      ChartData(
        'Others',
        52,
        kSecondaryColor,
      ),
      ChartData(
        'Others',
        52,
        kAvailableColor,
      ),
    ];
    return Expanded(
      child: SfCircularChart(
        annotations: <CircularChartAnnotation>[
          CircularChartAnnotation(
            widget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(
                  text: '20.2 GB',
                  size: 18,
                  weight: FontWeight.bold,
                  paddingBottom: 2,
                ),
                MyText(
                  text: '/ 100 GB',
                  size: 12,
                  weight: FontWeight.bold,
                ),
              ],
            ),
          ),
        ],
        series: <CircularSeries>[
          DoughnutSeries<ChartData, String>(
            dataSource: chartData,
            radius: '55.0',
            // strokeWidth: 11,
            innerRadius: '42.0',
            pointColorMapper: (ChartData data, _) => data.color,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
          ),
        ],
      ),
    );
  }
}
