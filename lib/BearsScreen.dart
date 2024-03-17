import 'package:flutter/material.dart';

class BearsScreen extends StatefulWidget {
  const BearsScreen({Key? key}) : super(key: key);
  @override
  State<BearsScreen> createState() => _BearsScreen();
}
class _BearsScreen extends State<BearsScreen>{
  int counter = 0;
  String message = "The Chicago Bears are Chicago's NFL team. They play at Soldier Field, a stadium on the Near South Side of Chicago. They have one Superbowl win from 1986.";
  String loopImage = "images/bears.png";

  @override
  void initState(){
    super.initState();
    message = "The Chicago Bears are Chicago's NFL team. They play at Soldier Field, a stadium on the Near South Side of Chicago. They have one Superbowl win from 1986.";
    loopImage = "images/bears.png";
  }

  @override
  Widget build(BuildContext context) {
    void trivia(int i){
      if(counter%2 == 0){
        setState(() {
          message =  "The Chicago Bears are Chicago's NFL team. They play at Soldier Field, a stadium on the Near South Side of Chicago. They have one Superbowl win from 1986.";
          loopImage = "images/bears.png";
        });
      }
      else{
        setState(() {
          message = "For 49 years, the Bears played at Wrigley Field, the historic stadium of the Chicago Cubs. In 1970 they relocated to Soldier Field.";
          loopImage = "images/bearstrivia.png";
        });
      }
    }
    //
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade400,
      appBar: AppBar(
        toolbarHeight: 170,
        title: Padding(
          padding: const EdgeInsets.only(
            bottom: 140,
          ),

          // Stroke effect for title
          child: Stack(
            children: <Widget>[
              Text(
                'Chicago Bears',
                style: TextStyle(
                  fontSize: 40,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = Colors.orangeAccent,
                ),
              ),
              Text(
                'Chicago Bears',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.blue.shade900,
                ),
              ),
            ],
          )
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
                // backgroundColor: Colors.blueGrey,
                onPressed: (){
                  Navigator.pop(context);
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
                    width: 250,
                    height: 250,
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
            const Padding(padding: EdgeInsets.all(5.0)),
            const Text(
              "Chicago Bears\n1410 Special Olympics Dr, Chicago, IL\n",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w700,
                color: Colors.white70,
              ),
              textAlign: TextAlign.center,
            ),
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