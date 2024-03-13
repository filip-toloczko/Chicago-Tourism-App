import 'package:flutter/material.dart';

class LoopScreen extends StatelessWidget {
  const LoopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade400,
      body: Center(
          child: Column(
            children: <Widget>[
              Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: ElevatedButton(
                  // backgroundColor: Colors.blueGrey,
                  onPressed: (){
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Hero(
                    tag: 'The Loop',
                    child: Container(
                      width: 250,
                      height: 250,
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
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: CircleBorder(),
                    primary: Colors.transparent,
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }
}