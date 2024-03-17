import 'package:flutter/material.dart';

class LoopScreen extends StatefulWidget {
  const LoopScreen({Key? key}) : super(key: key);
  @override
  State<LoopScreen> createState() => _LoopScreenState();
}
class _LoopScreenState extends State<LoopScreen>{
  int counter = 0;
  String message = "The Loop is a district in the downtown area of Chicago. It has some of the most iconic architecture in the city, and serves as its commercial hub.";
  String loopImage = "images/theloop.png";

  @override
  void initState(){
    super.initState();
    message = "The Loop is a district in the downtown area of Chicago. It has some of the most iconic architecture in the city, and serves as its commercial hub.";
    loopImage = "images/theloop.png";
  }

  @override
  Widget build(BuildContext context) {
    void trivia(int i){
      if(counter%2 == 0){
        setState(() {
          message = "The Loop is a district in the downtown area of Chicago. It has some of the most iconic architecture in the city, and serves as its commercial hub.";
          loopImage = "images/theloop.png";
        });
      }
      else{
        setState(() {
          message = "The reason that it is called 'The Loop' is because the L train makes a loop accross the boundaries of the neighborhood.";
          loopImage = "images/thelooptrivia.png";
        });
      }
    }

    return Scaffold(
      backgroundColor: Colors.blueGrey.shade400,
        appBar: AppBar(
          toolbarHeight: 170,
          title: Padding(
            padding: const EdgeInsets.only(
              bottom: 140,
            ),

            // Stroke effect for the header
            child: Stack(
              children: <Widget>[
                Text(
                  '     The Loop',
                  style: TextStyle(
                    fontSize: 40,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 2
                      ..color = Colors.orangeAccent,
                  ),
                ),
                Text(
                  '     The Loop',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.blue.shade900,
                  ),
                ),
              ],
            )
          ),

          // Make the background an image
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
        ),
      body: Center(
          child: Column(
            children: <Widget>[
              const Padding(padding: EdgeInsets.all(5.0)),
              Container(
                width: 250,
                height: 250,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: ElevatedButton(

                  // Return to home screen
                  onPressed: (){
                    Navigator.pop(context);
                  },

                  // Make the button a circle
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    padding: EdgeInsets.zero,
                    shape: const CircleBorder(),
                    backgroundColor: Colors.transparent,
                  ),

                  // Hero button for the loop
                  child: Hero(
                    tag: 'The Loop',
                    child: Container(
                      width: 250,
                      height: 250,

                      // Make the hero button a circle
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.orange, width: 10),
                          image: DecorationImage(
                              image: AssetImage(loopImage), fit: BoxFit.cover),
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

              // Title and address
              const Padding(padding: EdgeInsets.all(5.0)),
              const Text(
                "The Loop\nChicago Loop, Chicago, IL\n",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.white70,
                ),
                textAlign: TextAlign.center,
              ),

              // Description
              Padding(
                padding: const EdgeInsets.all(5.5),
                child: Text(
                  message,
                  style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
      ),

        // Change description and picture on press
        floatingActionButton: FloatingActionButton(
          onPressed: (){

          },
          backgroundColor: Colors.blue.shade900,
          tooltip: "Trivia",
          child: IconButton(
            icon: Icon(Icons.question_mark_rounded, size: 30, color: Colors.orange.shade700,),
            onPressed: (){
              counter++;
              trivia(counter);
            },
          ),
        ),
    );
  }
}