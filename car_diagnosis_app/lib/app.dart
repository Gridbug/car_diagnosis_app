import 'package:car_diagnosis_app/car_list/car_list_screen.dart';
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
      title: 'Car diagnosis app v0.0.1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => routes[routeSettings.name](context),
        );
      },
      initialRoute: CarListScreen.routeName,
    );
  }

  final routes = {
    Navigator.defaultRouteName: (context) => Container(
          color: Colors.white,
          child: SizedBox.expand(
            child: Center(
              child: Icon(Icons.airport_shuttle),
            ),
          ),
        ),
    CarListScreen.routeName: (context) => CarListScreen(),
  };
}
