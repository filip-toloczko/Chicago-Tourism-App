import 'package:flutter/material.dart';

class BullsScreen extends StatefulWidget {
  const BullsScreen({Key? key}) : super(key: key);
  @override
  State<BullsScreen> createState() => _BullsScreen();
}
class _BullsScreen extends State<BullsScreen>{
  int counter = 0;
  String message = "The Chicago Bulls are Chicago's NBA team playing at the United Center. The Bulls have won 6 NBA Championships, all in the 90s with the help of shooting guard Michael Jordan.";
  String loopImage = "images/bulls.png";

  @override
  void initState(){
    super.initState();
    message = "The Chicago Bulls are Chicago's NBA team playing at the United Center. The Bulls have won 6 NBA Championships, all in the 90s with the help of shooting guard Michael Jordan.";
    loopImage = "images/bulls.png";
  }

  @override
  Widget build(BuildContext context) {


    void trivia(int i){
      if(counter%2 == 0){
        setState(() {
          message =  "The Chicago Bulls are Chicago's NBA team playing at the United Center. The Bulls have won 6 NBA Championships, all in the 90s with the help of shooting guard Michael Jordan.";
          loopImage = "images/bulls.png";
        });
      }
      else{
        setState(() {
          message = "The Bulls are the only team to have participated in more than one NBA finals and never lost a series. They also have the second most wins in a season, at 72.";
          loopImage = "images/bullstrivia.png";
        });
      }
    }
    //
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade400,
      appBar: AppBar(
        toolbarHeight: 170,
        title: const Padding(
          padding: EdgeInsets.only(
            bottom: 140,
          ),
          child: Text(
            'Chicago Bulls',
            style: TextStyle(
              fontSize: 35,
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
                  tag: 'bulls',
                  child: Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.orange, width: 10),
                        image: DecorationImage(
                            image: AssetImage(loopImage), fit: BoxFit.cover),
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
            const Padding(padding: EdgeInsets.all(5.0)),
            const Text(
              "Chicago Bulls\n1901 W Madison St, Chicago, IL\n",
              style: TextStyle(
                fontSize: 20,
                color: Colors.orangeAccent,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(5.5),
              child: Text(
                message,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.orangeAccent,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // Navigator.pushNamed(context, '/taste');
        },
        backgroundColor: Colors.blueAccent,
        tooltip: "Trivia",
        child: IconButton(
          icon: const Icon(Icons.question_mark_rounded, size: 30, color: Colors.orange,),
          onPressed: (){
            counter++;
            trivia(counter);
          },
        ),
      ),
    );
  }
}