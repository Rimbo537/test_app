import 'package:flutter/material.dart';
import 'package:test_app/resources/app_strings.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        AppStrings.historyWidget,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
        ),
      ),
    );
  }
}
