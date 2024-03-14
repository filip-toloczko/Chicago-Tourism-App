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
              '     The Loop',
              style: TextStyle(
                fontSize: 40,
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
                    tag: 'The Loop',
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
                "The Loop\nChicago Loop, Chicago, IL\n",
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
            Navigator.pushNamed(context, '/lincolnpark');
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