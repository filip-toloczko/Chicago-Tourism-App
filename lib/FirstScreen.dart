import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      // There are three tabs, Neighborhoods, Events, Sports
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade400,
        appBar: AppBar(
          toolbarHeight: 170,

          // Create padding for the text in the appbar
          title: Padding(
            padding: const EdgeInsets.only(
                bottom: 120,
            ),

            // Stroke effect for the title
            child: Stack(
              children: <Widget>[
                Text(
                  ' Welcome to Chicago',
                  style: TextStyle(
                    fontSize: 40,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 2
                      ..color = Colors.orangeAccent,
                  ),
                ),
                Text(
                  ' Welcome to Chicago',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.blue.shade900,
                  ),
                ),
              ],
            )
          ),

          // Background image for the appbar
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/chicagoproject1.png'),
                  fit: BoxFit.fill,
                ),

                // Make the image round
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                )
            ),
          ),

          // Make the appbar round
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

              // Neighborhood tab
              Tab(
                icon: Icon(Icons.location_city_rounded, size: 45, color: Colors.orange),
                child: Text(
                  'NEIGHBORHOODS',
                  style: TextStyle(fontSize: 12),
                ),
              ),

              // Events tab
              Tab(
                icon: Icon(Icons.event_rounded, size: 45, color: Colors.orange),
                child: Text(
                  'EVENTS',
                  style: TextStyle(fontSize: 12),
                ),
              ),

              // Sports tab
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

            //Options for neighborhoods
            Center(
              child: Column(
                  children: <Widget>[

                    //Row for The Loop
                    const Padding(padding: EdgeInsets.all(15.0)),
                    Row(
                      children: [
                      Container(
                        padding: const EdgeInsets.only(left: 7),
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
                            shape: const CircleBorder(),
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
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.blueGrey.shade800,
                                        offset: const Offset(5.0, 5.0),
                                        blurRadius: 4.0,
                                        spreadRadius: 2.5)
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        '    The Loop',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          color: Colors.orangeAccent,
                        ),
                      ),],
                    ),

                    //Row for Lincoln Park
                    const Padding(padding: EdgeInsets.all(20.0)),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 7),
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
                              shape: const CircleBorder(),
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
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.blueGrey.shade800,
                                          offset: const Offset(5.0, 5.0),
                                          blurRadius: 4.0,
                                          spreadRadius: 2.5)
                                    ]),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          '    Lincoln Park',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w700,
                            color: Colors.orangeAccent,
                          ),
                        ),
                      ],
                    ),

                    //Row for Chinatown
                    const Padding(padding: EdgeInsets.all(20.0)),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 7),
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
                              shape: const CircleBorder(),
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
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.blueGrey.shade800,
                                          offset: const Offset(5.0, 5.0),
                                          blurRadius: 4.0,
                                          spreadRadius: 2.5)
                                    ]),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          '   Chinatown',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: Colors.orangeAccent,
                          ),
                        ),
                      ],
                    ),
                  ]
              ),
            ),

            //Options for Events
            Center(
              child: Column(
                  children: <Widget>[

                    //Row for Lollapalooza
                    const Padding(padding: EdgeInsets.all(20.0)),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 7),
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '/lolla');
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              padding: EdgeInsets.zero,
                              shape: const CircleBorder(),
                              backgroundColor: Colors.transparent,
                            ),
                            child: Hero(
                              tag: 'lolla',
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.orange, width: 10),
                                    image: const DecorationImage(
                                        image: AssetImage('images/lolla.png'), fit: BoxFit.cover),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.blueGrey.shade800,
                                          offset: const Offset(5.0, 5.0),
                                          blurRadius: 4.0,
                                          spreadRadius: 2.5)
                                    ]),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          '   Lollapalooza',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w700,
                            color: Colors.orangeAccent,
                          ),
                        ),
                      ],
                    ),

                    //Row for taste of Chicago
                    const Padding(padding: EdgeInsets.all(20.0)),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 7),
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '/taste');
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              padding: EdgeInsets.zero,
                              shape: const CircleBorder(),
                              backgroundColor: Colors.transparent,
                            ),
                            child: Hero(
                              tag: 'taste',
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.orange, width: 10),
                                    image: const DecorationImage(
                                        image: AssetImage('images/taste.png'), fit: BoxFit.cover),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.blueGrey.shade800,
                                          offset: const Offset(5.0, 5.0),
                                          blurRadius: 4.0,
                                          spreadRadius: 2.5)
                                    ]),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          '  Taste of Chicago',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.orangeAccent,
                          ),
                        ),
                      ],
                    ),

                    //Row for Chicago marathon
                    const Padding(padding: EdgeInsets.all(20.0)),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 7),
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '/marathon');
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              padding: EdgeInsets.zero,
                              shape: const CircleBorder(),
                              backgroundColor: Colors.transparent,
                            ),
                            child: Hero(
                              tag: 'marathon',
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.orange, width: 10),
                                    image: const DecorationImage(
                                        image: AssetImage('images/marathon.png'), fit: BoxFit.cover),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.blueGrey.shade800,
                                          offset: const Offset(5.0, 5.0),
                                          blurRadius: 4.0,
                                          spreadRadius: 2.5)
                                    ]),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          '  Chicago Marathon',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            color: Colors.orangeAccent,
                          ),
                        ),
                      ],
                    ),
                  ]
              ),
            ),

            //Options for sports
            Center(
              child: Column(
                  children: <Widget>[

                    //Row for Bears
                    const Padding(padding: EdgeInsets.all(20.0)),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 7),
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '/bears');
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              padding: EdgeInsets.zero,
                              shape: const CircleBorder(),
                              backgroundColor: Colors.transparent,
                            ),
                            child: Hero(
                              tag: 'bears',
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.orange, width: 10),
                                    image: const DecorationImage(
                                        image: AssetImage('images/bears.png'), fit: BoxFit.cover),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.blueGrey.shade800,
                                          offset: const Offset(5.0, 5.0),
                                          blurRadius: 4.0,
                                          spreadRadius: 2.5)
                                    ]),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          '  Chicago Bears',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w700,
                            color: Colors.orangeAccent,
                          ),
                        ),
                      ],
                    ),

                    //Row for Sox
                    const Padding(padding: EdgeInsets.all(20.0)),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 7),
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '/sox');
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              padding: EdgeInsets.zero,
                              shape: const CircleBorder(),
                              backgroundColor: Colors.transparent,
                            ),
                            child: Hero(
                              tag: 'sox',
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.orange, width: 10),
                                    image: const DecorationImage(
                                        image: AssetImage('images/sox.png'), fit: BoxFit.cover),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.blueGrey.shade800,
                                          offset: const Offset(5.0, 5.0),
                                          blurRadius: 4.0,
                                          spreadRadius: 2.5)
                                    ]),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          '   Chicago White Sox',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                            color: Colors.orangeAccent,
                          ),
                        ),
                      ],
                    ),

                    //Row for Bulls
                    const Padding(padding: EdgeInsets.all(20.0)),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 7),
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '/bulls');
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              padding: EdgeInsets.zero,
                              shape: const CircleBorder(),
                              backgroundColor: Colors.transparent,
                            ),
                            child: Hero(
                              tag: 'bulls',
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.orange, width: 10),
                                    image: const DecorationImage(
                                        image: AssetImage('images/bulls.png'), fit: BoxFit.cover),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.blueGrey.shade800,
                                          offset: const Offset(5.0, 5.0),
                                          blurRadius: 4.0,
                                          spreadRadius: 2.5)
                                    ]),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          '  Chicago Bulls',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w700,
                            color: Colors.orangeAccent,
                          ),
                        ),
                      ],
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