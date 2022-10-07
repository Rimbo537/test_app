import 'package:flutter/material.dart';
import 'dart:math';

import 'package:test_app/theme/app_colors.dart';

class GetData {
  List<Data> getData() {
    final List<Data> data = [
      Data(
        name: '1',
        percent: Random().nextInt(100),
        color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255),
            Random().nextInt(255), 1),
      ),
      Data(
        name: '2',
        percent: Random().nextInt(100),
        color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255),
            Random().nextInt(255), 1),
      ),
      Data(
        name: '3',
        percent: Random().nextInt(100),
        color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255),
            Random().nextInt(255), 1),
      ),
      Data(
        name: '4',
        percent: Random().nextInt(100),
        color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255),
            Random().nextInt(255), 1),
      ),
      Data(
        name: '5',
        percent: Random().nextInt(100),
        color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255),
            Random().nextInt(255), 1),
      ),
    ];

    return data;
  }
}

class Data {
  final String name;
  final int percent;
  final Color color;

  Data({
    required this.name,
    required this.percent,
    required this.color,
  });
}
