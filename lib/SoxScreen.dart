import 'package:flutter/material.dart';

class SoxScreen extends StatefulWidget {
  const SoxScreen({Key? key}) : super(key: key);
  @override
  State<SoxScreen> createState() => _SoxScreen();
}
class _SoxScreen extends State<SoxScreen>{
  int counter = 0;
  String message = "The Chicago White Sox are one of two Major League Baseball teams in Chicago. They play on the South Side of Chicago at Guaranteed Rate Field. They have three World Series wins.";
  String loopImage = "images/sox.png";

  @override
  void initState(){
    super.initState();
    message = "The Chicago White Sox are one of two Major League Baseball teams in Chicago. They play on the South Side of Chicago at Guaranteed Rate Field. They have three World Series wins.";
    loopImage = "images/sox.png";
  }

  @override
  Widget build(BuildContext context) {
    void trivia(int i){
      if(counter%2 == 0){
        setState(() {
          message =  "The Chicago White Sox are one of two Major League Baseball teams in Chicago. They play on the South Side of Chicago at Guaranteed Rate Field. They have three World Series wins.";
          loopImage = "images/sox.png";
        });
      }
      else{
        setState(() {
          message = "The White Sox won their first World Series against their bitter local rivals, the Chicago Cubs. They also have the second longest World Series drought of all time, the only team with a longer drought are the Cubs.";
          loopImage = "images/soxtrivia.png";
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
                'Chicago White Sox',
                style: TextStyle(
                  fontSize: 32,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = Colors.orangeAccent,
                ),
              ),
              Text(
                'Chicago White Sox',
                style: TextStyle(
                  fontSize: 32,
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
                  tag: 'sox',
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
              "Chicago White Sox\n333 W 35th St, Chicago, IL\n",
              style: TextStyle(
                fontSize: 25,
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