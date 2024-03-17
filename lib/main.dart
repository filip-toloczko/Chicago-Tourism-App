import 'package:flutter/material.dart';
import 'ChinatownScreen.dart';
import 'LincolnParkScreen.dart';
import 'FirstScreen.dart';
import 'LoopScreen.dart';
import 'LollaScreen.dart';
import 'TasteScreen.dart';
import 'MarathonScreen.dart';
import 'BearsScreen.dart';
import 'SoxScreen.dart';
import 'BullsScreen.dart';

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
        '/lolla' : (context) => const LollaScreen(),
        '/taste' : (context) => const TasteScreen(),
        '/marathon' : (context) => const MarathonScreen(),
        '/bears' : (context) => const BearsScreen(),
        '/sox' : (context) => const SoxScreen(),
        '/bulls' : (context) => const BullsScreen(),
      },
    ),
  );
}


