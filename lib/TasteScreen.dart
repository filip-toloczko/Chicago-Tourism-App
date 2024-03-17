import 'package:flutter/material.dart';

class TasteScreen extends StatefulWidget {
  const TasteScreen({Key? key}) : super(key: key);
  @override
  State<TasteScreen> createState() => _TasteScreenState();
}
class _TasteScreenState extends State<TasteScreen>{
  int counter = 0;
  String message = "Taste of Chicago is a food festival held every September in Grant Park. It is Chicago's largest festival, containing plenty of food and non food related events.";
  String loopImage = "images/taste.png";

  @override
  void initState(){
    super.initState();
    message = "Taste of Chicago is a food festival held every September in Grant Park. It is Chicago's largest festival, containing plenty of food and non food related events.";
    loopImage = "images/taste.png";
  }

  @override
  Widget build(BuildContext context) {
    void trivia(int i){
      if(counter%2 == 0){
        setState(() {
          message = "Taste of Chicago is a food festival held every September in Grant Park. It is Chicago's largest festival, containing plenty of food and non food related events.";
          loopImage = "images/taste.png";
        });
      }
      else{
        setState(() {
          message = "The Taste of Chicago is the world's largest food festival. It was founded by the founder of Morton's The Steakhouse.";
          loopImage = "images/tastetrivia.png";
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
                'Taste of Chicago',
                style: TextStyle(
                  fontSize: 36,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = Colors.orangeAccent,
                ),
              ),
              Text(
                'Taste of Chicago',
                style: TextStyle(
                  fontSize: 36,
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
                  tag: 'taste',
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
              "Taste of Chicago\n301 S. Columbus Dr. Chicago, IL\n",
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