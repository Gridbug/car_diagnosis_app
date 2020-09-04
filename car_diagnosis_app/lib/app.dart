import 'package:car_diagnosis_app/cars_list/cars_list.dart';
import 'package:car_diagnosis_app/data_model/entities/car.dart';
import 'package:car_diagnosis_app/repositories/entities/car.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CarListScreen(),
    );
  }
}
