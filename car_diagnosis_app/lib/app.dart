import 'package:car_diagnosis_app/data_model/entities/car.dart';
import 'package:car_diagnosis_app/repositories/entities/car.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
                return ListView.builder(
                  itemCount: carsSnapshot.data.length,
                  itemBuilder: (context, itemId) {
                    if (itemId < 0 || itemId > carsSnapshot.data.length) {
                      return null;
                    }
                    return ListTile(
                      leading: Icon(Icons.airport_shuttle),
                      title: Text(carsSnapshot.data[itemId].name),
                    );
                  },
                );
              })),
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
//
// Widget _buildFancyTitle() {
//   return Row(
//     children: [
//       Text(
//         "S",
//         style: TextStyle(color: CupertinoColors.white),
//       ),
//       Text(
//         "mart ",
//         style: TextStyle(color: CupertinoColors.systemGrey3),
//       ),
//       Text(
//         "V",
//         style: TextStyle(color: CupertinoColors.white),
//       ),
//       Text(
//         "isual car di",
//         style: TextStyle(color: CupertinoColors.systemGrey3),
//       ),
//       Text(
//         "AG",
//         style: TextStyle(color: CupertinoColors.white),
//       ),
//       Text(
//         "nostics",
//         style: TextStyle(color: CupertinoColors.systemGrey3),
//       ),
//     ],
//   );
// }
