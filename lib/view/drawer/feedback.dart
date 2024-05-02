import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:spareparts/view/homescreen/homescreen.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  TextEditingController feedback = TextEditingController();
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection("feedback");

  void sendFeedback() async {
    String feedbackText = feedback.text;

    // Check if feedback is not empty
    if (feedbackText.isNotEmpty) {
      // Add feedback to Firestore
      await collectionReference.add({
        'feedback': feedbackText,
        'timestamp': Timestamp.now(), // You can also add a timestamp if needed
      });

      // Clear the feedback text field after sending
      feedback.clear();

      // Show a snackbar or any other feedback to the user
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Feedback sent successfully!'),
        ),
      );
    } else {
      // Show error message if feedback is empty
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please enter your feedback before sending.'),
        ),
      );
    }
  }

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
              ),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Send your Feedback",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: feedback,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: ("feedback"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: sendFeedback, // Call the function to send feedback
                child: Text("Send"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
