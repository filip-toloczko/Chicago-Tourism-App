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
            padding: EdgeInsets.only(
                bottom: 120,
            ),
            child: Text(
              'Welcome to Chicago',
              style: TextStyle(
                fontSize: 37,
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
        body: TabBarView(
          children: [
            Center(
              child: Column(
                  children: <Widget>[
                    const Padding(padding: EdgeInsets.all(15.0)),
                    //Row for The Loop
                    Row(
                      children: [
                      Container(
                        padding: EdgeInsets.only(left: 7),
                        width: 150,
                        height: 150,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/theloop');
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            padding: EdgeInsets.zero,
                            shape: CircleBorder(),
                            backgroundColor: Colors.transparent,
                          ),
                          child: Hero(
                            tag: 'The Loop',
                            child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.orange, width: 10),
                                  image: const DecorationImage(
                                      image: AssetImage('images/theloop.png'), fit: BoxFit.cover),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.orangeAccent,
                                        offset: Offset(5.0, 5.0),
                                        blurRadius: 4.0,
                                        spreadRadius: 2.5)
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        '    The Loop',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.orangeAccent,
                        ),

                      ),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.all(20.0)),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 7),
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '/lincolnpark');
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              padding: EdgeInsets.zero,
                              shape: CircleBorder(),
                              backgroundColor: Colors.transparent,
                            ),
                            child: Hero(
                              tag: 'Lincoln Park',
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.orange, width: 10),
                                    image: const DecorationImage(
                                        image: AssetImage('images/lincolnpark.png'), fit: BoxFit.cover),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.orangeAccent,
                                          offset: Offset(5.0, 5.0),
                                          blurRadius: 4.0,
                                          spreadRadius: 2.5)
                                    ]),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '    Lincoln Park',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.orangeAccent,
                          ),

                        ),
                      ],
                    ),
                    //Lincoln Park Row
                    const Padding(padding: EdgeInsets.all(20.0)),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 7),
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '/chinatown');
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              padding: EdgeInsets.zero,
                              shape: CircleBorder(),
                              backgroundColor: Colors.transparent,
                            ),
                            child: Hero(
                              tag: 'Chinatown',
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.orange, width: 10),
                                    image: const DecorationImage(
                                        image: AssetImage('images/chinatown.png'), fit: BoxFit.cover),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.orangeAccent,
                                          offset: Offset(5.0, 5.0),
                                          blurRadius: 4.0,
                                          spreadRadius: 2.5)
                                    ]),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '    Chinatown',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.orangeAccent,
                          ),

                        ),
                      ],
                    ),
                  ]
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Center(
              child: Column(
                  children: <Widget>[
                    const Padding(padding: EdgeInsets.all(10.0)),
                    Row(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '/theloop');
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              padding: EdgeInsets.zero,
                              shape: CircleBorder(),
                              backgroundColor: Colors.transparent,
                            ),
                            child: Hero(
                              tag: 'The Loop',
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.orange, width: 10),
                                    image: const DecorationImage(
                                        image: AssetImage('images/theloop.png'), fit: BoxFit.cover),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.orangeAccent,
                                          offset: Offset(5.0, 5.0),
                                          blurRadius: 4.0,
                                          spreadRadius: 2.5)
                                    ]),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '    The Loop',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.orangeAccent,
                          ),

                        ),
                      ],
                    ),
                  ]
              ),
            ),
            Center(
              child: Column(
                  children: <Widget>[
                    const Padding(padding: EdgeInsets.all(10.0)),
                    Hero(
                      tag: 'The Loop',
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/neighborhoods');
                        },
                        child: Image.asset('images/theloop.png'),
                      ),
                    ),
                  ]
              ),
            ),

          ],

        ),
      ),
    );
  }
}