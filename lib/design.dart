import 'package:flutter/material.dart';
//import 'dart:math' as math;
import 'package:math_expressions/math_expressions.dart';
import 'buttons.dart';

class Design extends StatefulWidget {
  @override
  _Design createState() => _Design();
}

class _Design extends State<Design> {

  var question="0";///display screen for question
  var  answer="";///display screen for answer
  String store="";///used in ans btn
 //  var var1,var2;///used to store values
 // var length1, length2;/// used to know the length of a variables
 bool pressed=false;///used for computation



  void model(String number){
   setState(() {


     if(question=="0"){
       question="";
     }

     if(pressed){
       question=number;
       pressed=false;
     }
     else{
       question+=number;
     }

   });
 }

  @override

  Widget build(BuildContext context) {

   double height = MediaQuery.of(context).size.height;
   double width = MediaQuery.of(context).size.width;
   double text= MediaQuery.of(context).textScaleFactor;
    return Scaffold(

     backgroundColor:Colors.grey[100],
      body: SafeArea(
        child: Container(

          child: Column(

            children: [

              Expanded(child:
              Center(child: Column(
                  mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:30.0,right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(icon: Icon(Icons.bubble_chart_outlined,size: 1,), onPressed: (){}),

                        Row(
                          children: [
                            Text("Calc",style: TextStyle(fontSize: text*30,fontWeight:FontWeight.bold),),
                            Text(".",style: TextStyle(fontSize: text*30,color: Colors.red,fontWeight:FontWeight.bold),),
                          ],
                        ),
                          IconButton(icon: Icon(Icons.cancel), onPressed: (){setState(() {
                            question=question.substring(0,question.length-1) ;
                          });})
                        ],),
                    ),
                    Text( question,style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                    Text(
                    answer,style: TextStyle(fontSize: 30,color: Colors.black),
                    ),
                  ],
                )
                ),
              ),
Stack(
  children: [
    Container(
      height: height/1.6,
      width: width,
     decoration: BoxDecoration(
      color: Colors.white,
       boxShadow:[
         BoxShadow(
           spreadRadius:0.0

           )
       ]
     ),),
      Column(
        children: [ Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyButtons(
              buttontap: (){
                setState(() {
                  question="0";
                  answer="";
                });
              },
              buttonText: "C",
              btncolor: Colors.green,
              textColor: Colors.white,
            ),
            MyButtons(
              buttontap: (){
              setState(() {
                if(question=="0"){
                  question="-";
                }
              });

              },
              buttonText: "+/-",
              btncolor: Colors.red,
              textColor: Colors.white,
            ),
            MyButtons(
              buttontap: (){
                setState(() {


                   question+="%";

                 // length1 = question.length;
                });
              },
              buttonText: "mod",
              btncolor: Colors.deepPurple,
              textColor: Colors.white,
            ),
            MyButtons(
              buttontap: (){
                setState(() {
                  question+="/";



                });
              },
              buttonText: "/",
              btncolor: Colors.deepPurple,
              textColor: Colors.white,
            ),

          ],
        ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyButtons(
                buttontap: (){
                 model("7");
                },
                buttonText: "7",
                btncolor: Colors.white,
                textColor: Colors.deepPurple,
              ),
              MyButtons(
                buttontap: (){
                  model("8");
                },
                buttonText: "8",
                btncolor: Colors.white,
                textColor: Colors.deepPurple,
              ),
              MyButtons(

                buttontap: (){
                  model("9");
                },
                buttonText: "9",
                btncolor: Colors.white,
                textColor: Colors.deepPurple,
              ),
              MyButtons(
                buttontap: (){
                  setState(() {

                    question+="x";


                  });
                },
                buttonText: "x",
                btncolor: Colors.deepPurple,
                textColor: Colors.white,
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyButtons(
                buttontap: (){
                  model("4");
                },
                buttonText: "4",
                btncolor: Colors.white,
                textColor: Colors.deepPurple,
              ),
              MyButtons(
                buttontap: (){
                  model("5");
                },
                buttonText: "5",
                btncolor: Colors.white,
                textColor: Colors.deepPurple,
              ),
              MyButtons(
                buttontap: (){
                  model("6");
                },
                buttonText: "6",
                btncolor: Colors.white,
                textColor: Colors.deepPurple,
              ),
              MyButtons(
                buttontap: (){
                  setState(() {
                    question+="-";


                  });
                },
                buttonText: "-",
                btncolor: Colors.deepPurple,
                textColor: Colors.white,
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyButtons(
                buttontap: (){
                  model("1");
                },
                buttonText: "1",
                btncolor: Colors.white,
                textColor: Colors.deepPurple,
              ),
              MyButtons(
                buttontap: (){
                  model("2");
                },
                buttonText: "2",
                btncolor: Colors.white,
                textColor: Colors.deepPurple,
              ),
              MyButtons(
                buttontap: (){
                   model("3");
                },
                buttonText: "3",
                btncolor: Colors.white,
                textColor: Colors.deepPurple,
              ),
              MyButtons(
                buttontap: (){
                  setState(() {
                    question+="+";

                  });
                },
                buttonText: "+",
                btncolor: Colors.deepPurple,
                textColor: Colors.white,
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyButtons(
                buttontap: (){
                  model("0");
                },
                buttonText: "0",
                btncolor: Colors.white,
                textColor: Colors.deepPurple,
              ),
              MyButtons(
                buttontap: (){
                 model(".");
                },
                buttonText: ".",
                btncolor: Colors.white,
                textColor: Colors.deepPurple,
              ),
              MyButtons(
                buttontap: (){
                  setState(() {
                    question="";
                   store=answer;
                   question+=store;


                  });
                },
                buttonText: "ANS",
                btncolor: Colors.white,
                textColor: Colors.deepPurple,
              ),
              MyButtons(
                buttontap: (){
                  setState(() {
                      equalPressed();
                  });
                },
                buttonText: "=",
                btncolor: Colors.deepPurple,
                textColor: Colors.white,
              ),

            ],
          ),],
      ),

  ],
)],
          ),
        ),
      ),
    );
  }
   void equalPressed(){
    String finalQuestion= question;
    finalQuestion=finalQuestion.replaceAll("x", "*");
     Parser p = Parser();
     Expression exp = p.parse(finalQuestion);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer=eval.toString();

   }
}
