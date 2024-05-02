import 'package:flutter/material.dart';
import 'package:spareparts/view/datascreen/bikedatascreen.dart';
import 'package:spareparts/view/homescreen/homescreen.dart';

class Bikescreen extends StatefulWidget {
  const Bikescreen({super.key});

  @override
  State<Bikescreen> createState() => _BikescreenState();
}

class _BikescreenState extends State<Bikescreen> {
  TextEditingController brandname = TextEditingController();
  TextEditingController modelname = TextEditingController();
  TextEditingController modelyear = TextEditingController();
  TextEditingController sparepartname = TextEditingController();
  TextEditingController place = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Homescreen(),
                    ));
              },
              icon: Icon(Icons.arrow_back))),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  controller: brandname,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: ("Brand Name")),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: modelname,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: ("Model Name")),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: modelyear,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: ("Model Year")),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: sparepartname,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: ("Spare Part Name")),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: place,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: ("city,district,state")),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BikeDataScreen(),
                          ));
                    },
                    child: Text("Enter"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
