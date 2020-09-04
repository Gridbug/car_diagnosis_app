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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cars list")),
      body: Center(
        child: StreamBuilder<List<Car>>(
          stream: Provider.of<CarRepository>(context).all,
          builder: (context, carsSnapshot) {
            return ListView.separated(
              itemCount: carsSnapshot.data.length,
              itemBuilder: (context, itemId) {
                if (itemId < 0 || itemId > carsSnapshot.data.length) {
                  return null;
                }

                return Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: _buildCarTile(carsSnapshot.data[itemId]),
                );
              },
              separatorBuilder: (context, index) => Divider(height: 1),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<CarRepository>(context, listen: false).create(
            Car((b) => b..name = "New car"),
          );
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

Widget _buildCarTile(Car car) {
  return ListTile(
    leading: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.airport_shuttle),
      ],
    ),
    title: Text(car.name),
    subtitle: Text(
        "<car model name, year, VIN code>\n<some details about car defects>"),
    trailing: Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              "42",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
      ),
    ),
    isThreeLine: true,
    onTap: () {
      print('>>> ${car.name} was tapped!!!');
    },
    onLongPress: () {
      print('>>> ${car.name} was long pressed!!!');
    },
  );
}
