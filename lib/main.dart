import 'dart:async';
import 'package:kdgaugeview/kdgaugeview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bmi_calculator.dart';
void main() {
  runApp(app());
}
class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'bmiapp',
      home: bmi(),
    );
  }
}
class bmi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return bmiState();
  }
}
class bmiState extends State<bmi>{
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>bmi_calculator()));
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Container(
        padding: EdgeInsets.all(50),
        child:
        KdGaugeView(
          minSpeed: 0,
          maxSpeed: 100,
          speed: 100,
          speedTextStyle: TextStyle(
              color: Colors.blue,
              fontSize: 50,
              fontWeight: FontWeight.w900),
          unitOfMeasurement: 'BMI',
          unitOfMeasurementTextStyle:
          TextStyle(color: Colors.blue, fontSize: 20),
          gaugeWidth: 40,
          innerCirclePadding: 30,
          alertSpeedArray: [100],
          fractionDigits: 1,
          animate: true,
          activeGaugeColor: Colors.orange,
          duration: Duration(seconds: 1),
          alertColorArray: [
            Colors.red
          ],
        ),
      )
    );
  }
}
