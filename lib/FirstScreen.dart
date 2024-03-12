import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 140,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Welcome to Chicago',
            style: TextStyle(
              fontSize: 20,
              color: Colors.orange.shade400,
            ),
          ),
        ),
        flexibleSpace: ClipRRect(
          borderRadius: BorderRadius.circular(30),

         child: const Image(
           image: AssetImage('images/chicagoproject1.png'),
           fit: BoxFit.fill,
         ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          )
        ),
        actions: <Widget>[
          IconButton(
          icon: Icon(Icons.info),
          onPressed: () {
            // Handle the button's onPressed event here
            print('Info button pressed');
          }, ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          // Within the `FirstScreen` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('Go to second'),
        ),
      ),
    );
  }
}