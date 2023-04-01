part of '../../pages.dart';

class VoltageChart extends StatelessWidget {
  const VoltageChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultMargin * 2),
      width: MediaQuery.of(context).size.width / 1.05,
      height: MediaQuery.of(context).size.height / 3.5,
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: 11,
          minY: 0,
          maxY: 6,
          titlesData: LineTitles.getTitleData(),
          gridData: FlGridData(
            show: true,
            // getDrawingHorizontalLine: (value) {
            //   return FlLine(
            //     color: const Color(0xff37434d),
            //     strokeWidth: 5,
            //   );
            // },
            drawVerticalLine: false,
            // getDrawingVerticalLine: (value) {
            //   return FlLine(
            //     strokeWidth: 1,
            //     color: const Color(0xff37434d),
            //   );
            // },
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(
              color: Colors.white,
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                const FlSpot(0, 4),
                const FlSpot(1.3, 2),
                const FlSpot(2.9, 5),
                const FlSpot(5.8, 3),
                const FlSpot(7, 5),
                const FlSpot(9, 4),
                const FlSpot(11, 2),
              ],
              isCurved: true,
              color: Colors.blue,
              barWidth: 2.5,
              belowBarData: BarAreaData(
                show: true,
                color: Colors.blue.withOpacity(0.3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
