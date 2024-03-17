import 'package:flutter/material.dart';

class LincolnParkScreen extends StatefulWidget {
  const LincolnParkScreen({Key? key}) : super(key: key);
  @override
  State<LincolnParkScreen> createState() => _LincolnParkScreenState();
}
class _LincolnParkScreenState extends State<LincolnParkScreen>{
  int counter = 0;
  String message = "Lincoln Park is a community on the North Side of Chicago. It is known for its upscale retailers, boutiques, as well as restaurants and coffee shops.";
  String loopImage = "images/lincolnpark.png";

  @override
  void initState(){
    super.initState();
    message = "Lincoln Park is a community on the North Side of Chicago. It is known for its upscale retailers, boutiques, as well as restaurants and coffee shops.";
    loopImage = "images/lincolnpark.png";
  }

  @override
  Widget build(BuildContext context) {
    void trivia(int i){
      if(counter%2 == 0){
        setState(() {
          message = "Lincoln Park is a community on the North Side of Chicago. It is known for its upscale retailers, boutiques, as well as restaurants and coffee shops.";
          loopImage = "images/lincolnpark.png";
        });
      }
      else{
        setState(() {
          message = "Lincoln Park is home to the Lincoln Park Zoo, the fourth oldest zoo in North America. This zoo is also one of the only zoos in the country that do not charge admission.";
          loopImage = "images/lincolnparktrivia.png";
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
                '  Lincoln Park',
                style: TextStyle(
                  fontSize: 40,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = Colors.orangeAccent,
                ),
              ),
              Text(
                '  Lincoln Park',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.blue.shade900,
                ),
              ),
            ],
          )
        ),

        // Make background an image
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
                // backgroundColor: Colors.blueGrey,
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
                child: Hero(
                  tag: 'Lincoln Park',
                  child: Container(
                    width: 250,
                    height: 250,

                    // Make hero a circle
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
              "Lincoln Park\nLincoln Park, Chicago, IL\n",
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