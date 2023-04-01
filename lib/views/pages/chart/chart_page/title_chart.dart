import 'package:energy_meter_app/shared/shared.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        topTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 20,
            getTitlesWidget: (value, meta) {
              switch (value.toInt()) {
                case 2:
                  return const SizedBox();
                case 5:
                  return const SizedBox();
                case 8:
                  return const SizedBox();
              }
              return const SizedBox();
            },
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 20,
            getTitlesWidget: (value, meta) {
              switch (value.toInt()) {
                case 1:
                  return Text(
                    '00',
                    style: blackTextStyleInter,
                  );
                case 3:
                  return Text(
                    '10',
                    style: blackTextStyleInter,
                  );
                case 5:
                  return Text(
                    '20',
                    style: blackTextStyleInter,
                  );
                case 7:
                  return Text(
                    '30',
                    style: blackTextStyleInter,
                  );
                case 9:
                  return Text(
                    '40',
                    style: blackTextStyleInter,
                  );
              }
              return const SizedBox();
            },
          ),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 32,
            getTitlesWidget: (value, meta) {
              switch (value.toInt()) {
                case 2:
                  return Text(
                    '00:30',
                    style: blackTextStyleInter,
                  );
                case 5:
                  return Text(
                    '01:00',
                    style: blackTextStyleInter,
                  );
                case 8:
                  return Text(
                    '01:30',
                    style: blackTextStyleInter,
                  );
              }
              return const SizedBox();
            },
          ),
        ),
      );
}
