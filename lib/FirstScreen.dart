import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade400,
        appBar: AppBar(
          toolbarHeight: 170,
          title: const Padding(
            padding: EdgeInsets.only(bottom: 120),
            child: Text(
              ' Welcome to Chicago',
              style: TextStyle(
                fontSize: 38,
                color: Colors.orangeAccent,
              ),
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/chicagoproject1.png'),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              )
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            )
          ),
          bottom: const TabBar(
            unselectedLabelColor: Colors.orange,
            labelColor: Colors.blueAccent,
            indicatorColor: Colors.blueAccent,
            tabs: [
              Tab(
                icon: Icon(Icons.location_city_rounded, size: 45, color: Colors.orange),
                child: Text(
                  'NEIGHBORHOODS',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Tab(
                icon: Icon(Icons.event_rounded, size: 45, color: Colors.orange),
                child: Text(
                  'EVENTS',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Tab(
                icon: Icon(Icons.sports_football_rounded, size: 45, color: Colors.orange),
                child: Text(
                  'SPORTS',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}