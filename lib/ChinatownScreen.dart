import 'package:flutter/material.dart';

class ChinatownScreen extends StatefulWidget {
  const ChinatownScreen({Key? key}) : super(key: key);
  @override
  State<ChinatownScreen> createState() => _ChinatownScreenState();
}
class _ChinatownScreenState extends State<ChinatownScreen>{
  int counter = 0;
  String message = "Chinatown is a neighborhood south of the downtown area in Chicago. It offers a tourist destination filled with Chinese restaurants and stores.";
  String loopImage = "images/chinatown.png";

  @override
  void initState(){
    super.initState();
    message = "Chinatown is a neighborhood south of the downtown area in Chicago. It offers a tourist destination filled with Chinese restaurants and stores.";
    loopImage = "images/chinatown.png";
  }

  @override
  Widget build(BuildContext context) {
    void trivia(int i){
      if(counter%2 == 0){
        setState(() {
          message = "Chinatown is a neighborhood south of the downtown area in Chicago. It offers a tourist destination filled with Chinese restaurants and stores.";
          loopImage = "images/chinatown.png";
        });
      }
      else{
        setState(() {
          message = "Chinatown is home to the Nine-Dragon Wall, which is a smaller copy of a larger wall located in Beijing, China.";
          loopImage = "images/chinatowntrivia.png";
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
                '    Chinatown',
                style: TextStyle(
                  fontSize: 40,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = Colors.orangeAccent,
                ),
              ),
              Text(
                '    Chinatown',
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
                  tag: 'Chinatown',
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
              "Chinatown\nChinatown, Chicago, IL\n",
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