import 'package:flutter/material.dart';
import 'package:spareparts/view/carscreen/carscreen.dart';

class CarDataScreen extends StatefulWidget {
  const CarDataScreen({super.key});

  @override
  State<CarDataScreen> createState() => _CarDataScreenState();
}

class _CarDataScreenState extends State<CarDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Carscreen(),
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
