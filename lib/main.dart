import 'package:flutter/material.dart';
import 'package:testing/pages/vehicle/vehicle_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false ,
      theme: ThemeData(
      ),
      home: const VehiclePage(),
    );
  }
}
