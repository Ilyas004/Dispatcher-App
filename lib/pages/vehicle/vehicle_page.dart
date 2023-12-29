import 'package:flutter/material.dart';
import 'package:testing/design/colors.dart';
import 'package:testing/design/dimensions.dart';
import 'package:testing/pages/vehicle/vehicle_list.dart';

class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DjigIT.com Dispatcher',
          style: TextStyle(
              color: primaryColor,
              fontSize: fontSize16,
              fontWeight: FontWeight.w500),
        ),
        backgroundColor: surfaceColor,
        elevation: elevation0,
        centerTitle: true,
      ),
      body: Container(
        color: backgroundColor,
        child: const VehicleList(),
      ),
    );
  }
}
