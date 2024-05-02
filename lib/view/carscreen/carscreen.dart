import 'package:flutter/material.dart';
import 'package:spareparts/view/datascreen/cardatascreen.dart';
import 'package:spareparts/view/homescreen/homescreen.dart';

class Carscreen extends StatefulWidget {
  const Carscreen({super.key});

  @override
  State<Carscreen> createState() => _CarscreenState();
}

class _CarscreenState extends State<Carscreen> {
  TextEditingController cbrandname = TextEditingController();
  TextEditingController cmodelname = TextEditingController();
  TextEditingController cmodelyear = TextEditingController();
  TextEditingController csparepartname = TextEditingController();
  TextEditingController cplace = TextEditingController();
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
                  controller: cbrandname,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: ("Brand Name")),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: cmodelname,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: ("Model Name")),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: cmodelyear,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: ("Model Year")),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: csparepartname,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: ("Spare Part Name")),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: cplace,
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
                            builder: (context) => CarDataScreen(),
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
