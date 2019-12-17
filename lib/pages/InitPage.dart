import 'dart:ui' as prefix0;
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:triviaquiz/pages/HighScore.dart';
import 'package:triviaquiz/pages/Category.dart';

class InitPage extends StatefulWidget{
  @override
  _InitState createState() => _InitState();
}
class _InitState extends State<InitPage>{
  
  void showExitGameConfirm(){
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        contentPadding: EdgeInsets.all(0),
        backgroundColor: Colors.transparent,
        content: BackdropFilter(
          filter: prefix0.ImageFilter.blur(sigmaX: 4.0,sigmaY: 4.0),
          child: Container(
          width: 300,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 300,
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text("ARE YOU SURE YOU WANT TO QUIT?",textAlign: TextAlign.center,),
              ),
              Container(
                width: 300,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        SystemNavigator.pop();
                      },
                      child: Container(
                      width: 100,
                      height: 50,
                      alignment: AlignmentDirectional.center,
                      child: Text("YES",style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop(null);
                      },
                      child: Container(
                      width: 100,
                      height: 50,
                      alignment: AlignmentDirectional.center,
                      child: Text("NO",style: TextStyle(
                        fontSize: 20
                      ),),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        )
      )
    );
  }
  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async => false,
        child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          image: DecorationImage(
            image: AssetImage("assets/images/masbet.gif"),
            fit: BoxFit.fitHeight
          )
        ),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 20),
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset('assets/images/main.png'),
                    ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, PageTransition(child: CategoryPage(),type: PageTransitionType.fade));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/10,vertical: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: BoxDecoration(
                border: Border.all(color: Colors.white.withOpacity(0.2),width: 3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10.0, // has the effect of softening the shadow
                    spreadRadius: 0.1, // has the effect of extending the shadow
                    offset: Offset(
                      5.0, // horizontal, move right 10
                      5.0, // vertical, move down 10
                    ),
                  )
                ],
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(234, 63, 104, 1),
              ),
              alignment: AlignmentDirectional.center,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 70,
                    height: 70,
                    color: Color.fromRGBO(240, 92, 127, 1),
                    alignment: AlignmentDirectional.center,
                    child: Icon(Icons.play_arrow,size: 50,color: Colors.white),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    height: 70,
                    alignment: AlignmentDirectional.center,
                    child: Text("START",style: TextStyle(
                      color: Colors.white,
                      fontFamily: "CH",
                      fontSize: 25
                    ),),
                  )
                ],
              ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, PageTransition(child: HighScorePage(),type: PageTransitionType.fade));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/10,vertical: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: BoxDecoration(
                border: Border.all(color: Colors.white.withOpacity(0.2),width: 3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10.0, // has the effect of softening the shadow
                    spreadRadius: 0.1, // has the effect of extending the shadow
                    offset: Offset(
                      5.0, // horizontal, move right 10
                      5.0, // vertical, move down 10
                    ),
                  )
                ],
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(247, 166, 35, 1),
              ),
              alignment: AlignmentDirectional.center,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 70,
                    height: 70,
                    color: Color.fromRGBO(243, 176, 67, 1),
                    alignment: AlignmentDirectional.center,
                    child: Icon(Icons.equalizer,size: 50,color: Colors.white),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    height: 70,
                    alignment: AlignmentDirectional.center,
                    child: Text("RANKING",style: TextStyle(
                      color: Colors.white,
                      fontFamily: "CH",
                      fontSize: 25
                    ),),
                  )
                ],
              ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  showExitGameConfirm();
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/10,vertical: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: BoxDecoration(
                border: Border.all(color: Colors.white.withOpacity(0.2),width: 3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10.0, // has the effect of softening the shadow
                    spreadRadius: 0.1, // has the effect of extending the shadow
                    offset: Offset(
                      5.0, // horizontal, move right 10
                      5.0, // vertical, move down 10
                    ),
                  )
                ],
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(128, 129, 130, 1),
              ),
              alignment: AlignmentDirectional.center,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 70,
                    height: 70,
                    color: Color.fromRGBO(154, 155, 156, 1),
                    alignment: AlignmentDirectional.center,
                    child: Icon(Icons.exit_to_app,size: 50,color: Colors.white),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    height: 70,
                    alignment: AlignmentDirectional.center,
                    child: Text("EXIT",style: TextStyle(
                      color: Colors.white,
                      fontFamily: "CH",
                      fontSize: 25
                    ),),
                  )
                ],
              ),
                ),
              ),
          ],   
        ),
      ),
      )
    );
  }
}