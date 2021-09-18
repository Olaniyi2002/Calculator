import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  MyButtons({this.btncolor, this.textColor, this.buttonText,this.buttontap});
  final btncolor, textColor,buttontap;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text=MediaQuery.of(context).textScaleFactor;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Container(
          height: height/10,
          width:width/5.5,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(30),
            shape: BoxShape.circle,
                color: btncolor
          ),
          child:    TextButton(
            onPressed:buttontap,
            child: Text(
              buttonText,
              style: TextStyle(color: textColor,fontSize:text* 20),
            ),
          ),
        ),
      ),
    );
  }
}
