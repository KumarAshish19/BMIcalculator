import 'package:bmi/Homescreen.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(this.bmiresult,this.bmisuggestion,this.bmiinterpretation);

  final String bmiresult;

  final String bmisuggestion;

  final String bmiinterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("BMI CALCULATOR"),
      ),
      body: Column(children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(15),
            color: const Color(0xFF0A0E21),
            child: const Text(
              "YOUR RESULT",
              style: TextStyle(fontSize: 35, color: Colors.white),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xFF111328),),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  bmisuggestion,
                  style: TextStyle(fontSize: 30, color: Colors.green),
                ),
                Text(
                  bmiresult,
                  style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  bmiinterpretation,
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 80,
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFEB1555),
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Homescreen()));
            },
            child: const Text(
              "RE-CALCULATE",
              style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(206, 250, 249, 249),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],),
    );
  }
}
