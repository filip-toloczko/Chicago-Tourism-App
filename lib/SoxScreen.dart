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
        title: const Padding(
          padding: EdgeInsets.only(
            bottom: 140,
          ),
          child: Text(
            'Chicago White Sox',
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
                  tag: 'sox',
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
              "Chicago White Sox\n333 W 35th St, Chicago, IL\n",
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