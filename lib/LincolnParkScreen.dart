import 'package:flutter/material.dart';

class LincolnParkScreen extends StatefulWidget {
  const LincolnParkScreen({Key? key}) : super(key: key);
  @override
  State<LincolnParkScreen> createState() => _LoopScreenState();
}
class _LoopScreenState extends State<LincolnParkScreen>{
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
        title: const Padding(
          padding: EdgeInsets.only(
            bottom: 140,
          ),
          child: Text(
            '   Lincoln Park',
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
                  tag: 'Lincoln Park',
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
              "Lincoln Park\nLincoln Park, Chicago, IL\n",
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