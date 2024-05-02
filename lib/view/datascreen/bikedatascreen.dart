import 'package:flutter/material.dart';
import 'package:spareparts/view/bikescreen/bikescreen.dart';

class BikeDataScreen extends StatefulWidget {
  const BikeDataScreen({Key? key}) : super(key: key);

  @override
  State<BikeDataScreen> createState() => _BikeDataScreenState();
}

class _BikeDataScreenState extends State<BikeDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bikescreen(),
                  ));
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          Flexible(
            // Added Expanded widget to allow ListView to occupy remaining space
            child: ListView.separated(
              itemBuilder: (context, index) => Container(
                width: 200,
                height: 200,
                color: Colors.black,
              ),
              separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: BikeDataScreen(),
  ));
}
