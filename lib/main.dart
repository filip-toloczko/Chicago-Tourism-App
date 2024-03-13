import 'package:flutter/material.dart';
import 'package:ftolo2_project_1/ChinatownScreen.dart';
import 'package:ftolo2_project_1/LincolnParkScreen.dart';
import 'FirstScreen.dart';
import 'LoopScreen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Chicago Sightseeing App',
      initialRoute: '/home',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/home': (context) => const FirstScreen(),
        '/theloop': (context) => const LoopScreen(),
        '/lincolnpark': (context) => const LincolnParkScreen(),
        '/chinatown': (context) => const ChinatownScreen(),
      },
    ),
  );
}


