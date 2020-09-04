import 'package:car_diagnosis_app/car_list/car_creation_screen.dart';
import 'package:car_diagnosis_app/data_model/entities/car.dart';
import 'package:car_diagnosis_app/repositories/entities/car.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CarListScreen extends StatefulWidget {
  static const routeName = 'CarListScreen';

  @override
  _CarListScreenState createState() => _CarListScreenState();
}

class _CarListScreenState extends State<CarListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cars")),
      body: Center(
        child: StreamBuilder<List<Car>>(
          stream: Provider.of<CarRepository>(context).all,
          builder: (context, carsSnapshot) {
            if (!carsSnapshot.hasData) {
              return Container();
            }

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
          // Provider.of<CarRepository>(context, listen: false).create(
          //   Car((b) => b..name = "New car"),
          // );
          Navigator.pushNamed(context, CarCreationScreen.routeName);
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