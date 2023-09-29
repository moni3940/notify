import 'package:flutter/material.dart';
import 'main.dart';
class Event extends StatelessWidget {
  const Event({super.key});

  void _createEvent() {
    // Add your logic to create an event here
    print('Event created!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple.shade100,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            title: Text('\n Manage Event'),
            backgroundColor:
            Colors.purple.shade200, // You can use any color you want
            centerTitle: true, // Center the title text
          ),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder: (context){return MyHomePage();},));
            },
            child: Text('Create Event'),
          ),
        ),
      ),
    );
  }
}