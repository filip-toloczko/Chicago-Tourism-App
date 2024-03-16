import 'package:flutter/material.dart';

class LollaScreen extends StatefulWidget {
  const LollaScreen({Key? key}) : super(key: key);
  @override
  State<LollaScreen> createState() => _LollaScreenState();
}
class _LollaScreenState extends State<LollaScreen>{
  int counter = 0;
  String message = "Lollapalooza is a yearly music festival taking place in Grant Park. It is Chicago's largest and longest music festival.";
  String loopImage = "images/lolla.png";

  @override
  void initState(){
    super.initState();
    message = "Lollapalooza is a yearly music festival taking place in Grant Park. It is Chicago's largest and longest music festival.";
    loopImage = "images/lolla.png";
  }

  @override
  Widget build(BuildContext context) {


    void trivia(int i){
      if(counter%2 == 0){
        setState(() {
          message = "Lollapalooza is a yearly music festival taking place in Grant Park. It is Chicago's largest and longest music festival.";
          loopImage = "images/lolla.png";
        });
      }
      else{
        setState(() {
          message = "Lollapalooza started as a farewell tour for the band Jane's Addiction. Years later the event made Chicago its permanent home.";
          loopImage = "images/lollatrivia.png";
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
            '  Lollapalooza',
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
                  tag: 'lolla',
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
              "Lollapalooza\n337 E. Randolph St. Chicago, IL\n",
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
          Navigator.pushNamed(context, '/lolla');
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