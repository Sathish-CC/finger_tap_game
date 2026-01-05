import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Mainpage(),
  ));
}
class Mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery
                .of(context)
                .size
                .height / 2,
            color: Colors.red,
            child: Center(
              child:  Transform.rotate(
                angle: pi,
                child:  MaterialButton(
                      height: 180,
                      minWidth: 180,
                      shape: CircleBorder(),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Gamepage()),
                        );
                      },
                      child: Text("Start Game", style: GoogleFonts.pressStart2p(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,

                      ),
                      )


                  ),
              ),
            )
          ),
          Container(
            width: double.infinity,
            height: MediaQuery
                .of(context)
                .size
                .height / 2,
            color: Colors.blue,
            child: Center(
             child:  MaterialButton(
                  height: 180,
                  minWidth: 180,
                  shape: CircleBorder(),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Gamepage()),
                    );
                  },
                  child: Text("Start Game", style: GoogleFonts.pressStart2p(
                      color: Colors.black,
                      fontSize: 15,
                    fontWeight: FontWeight.bold,

                  ),
                  )


              ),

            )
          ),
         ]
      ),
    );
  }
}

class Gamepage extends StatefulWidget{
  @override
  State<Gamepage> createState() => _GamepageState();
}

class _GamepageState extends State<Gamepage> {
  double redcardheight = 0;
  double bluecardheight = 0;
  int player1score = 0;
  int player2score = 0;
  bool  gamestarted = false;
  @override
  Widget build(BuildContext context) {
    if(gamestarted==false) {
      redcardheight = MediaQuery
          .of(context)
          .size
          .height / 2;
      bluecardheight = MediaQuery
          .of(context)
          .size
          .height / 2;
      gamestarted = true;
    }
    return Scaffold(
      body: Column(
        children: [
          MaterialButton(
            padding: EdgeInsets.zero,
            onPressed: (){

              setState(() {
                redcardheight = redcardheight+30;
                bluecardheight = bluecardheight-30;
                player1score=player1score+5;

              });
              double winningcardheight = MediaQuery.of(context).size.height-150;
              if(redcardheight>winningcardheight){

                Navigator.push(
                  context,MaterialPageRoute(builder: (context)=> resultpage("Player 1",player1score))
                );
              }
            },
            child: Container(
              height: redcardheight,
              width: double.infinity,
              color: Colors.red,
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(30),
              child: Row(
            children: [
              Transform.rotate(
                angle: pi, // Keeps text upside down for Player 1
                child: Text(player1score.toString(),
                  style: GoogleFonts.pressStart2p(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),


              Transform.rotate(
                      angle: pi, // Keeps text upside down for Player 1
                      child: Text("Score: ",
                      style: GoogleFonts.pressStart2p(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),



              Expanded(
                child: Transform.rotate(
                  angle: pi, // Keeps text upside down for Player 1
                  child: Text("Player 1",
                    style: GoogleFonts.pressStart2p(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
                    ),



            ),
          ),
          MaterialButton(
            padding: EdgeInsets.zero,
            onPressed:(){
              setState(() {
                bluecardheight = bluecardheight+30;
                redcardheight = redcardheight-30;
                player2score = player2score+5;
              });
              double winningcardheight = MediaQuery.of(context).size.height-150;
              print(bluecardheight);
              print(winningcardheight);
              if(bluecardheight>winningcardheight){
                Navigator.push(
                    context,MaterialPageRoute(builder: (context)=> resultpage("Player 2",player2score))
                );
              }
            },
            child: Container(
              height: bluecardheight,
              width: double.infinity,
              color: Colors.blue,
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(20),
              child:
                  Row(
                    children: [
                      Expanded(
                        child: Text("Player 2",
                          style: GoogleFonts.pressStart2p(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text("Score: ",
                        style: GoogleFonts.pressStart2p(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(player2score.toString(),
                        style: GoogleFonts.pressStart2p(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )

              ),
          ),

        ],
      ),
    );
  }
}

class resultpage extends StatelessWidget{
  String player = "";
  int Score = 0;
  resultpage(this.player,this.Score);

  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
          backgroundColor: (player=="Player 1")?Colors.red:Colors.blue,
          body:
          Center(
            child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Text(Score.toString(),style: GoogleFonts.pressStart2p(
                  color: Color(0xFFFFD700),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 20),
                Text(player,style: GoogleFonts.pressStart2p(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 40),
                MaterialButton(
                  height: 50,
                  minWidth: 50,
                  padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: Colors.black,
                  onPressed: (){
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Text("Play Again",style: GoogleFonts.pressStart2p(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),),
                )
              ],
            ),
          ),
        );
  }
}



