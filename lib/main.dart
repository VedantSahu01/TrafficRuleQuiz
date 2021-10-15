import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questions = [
    Text(
        "An easy way to know if you are maintaining the safe driving distance is to take",
        style: TextStyle(fontSize: 25, color: Color.fromRGBO(30, 33, 45, 1)),
        textAlign: TextAlign.center),
    Text("On expressway while driving in the car, you will normally use:",
        style: TextStyle(fontSize: 25, color: Color.fromRGBO(30, 33, 45, 1)),
        textAlign: TextAlign.center),
    Text(
        "What is the average distance traveled by a vehicle moving at a speed of 72 KM per hr in 1 second?",
        style: TextStyle(fontSize: 25, color: Color.fromRGBO(30, 33, 45, 1)),
        textAlign: TextAlign.center),
    Text(
        "Which of the following is a mandatory requirement as per HCCBPL Road Safety Policy? Check all that applies.",
        style: TextStyle(fontSize: 25, color: Color.fromRGBO(30, 33, 45, 1)),
        textAlign: TextAlign.center),
    Text(
        "While you intend to take a right or left turn first you have to do in the following sequence:",
        style: TextStyle(fontSize: 25, color: Color.fromRGBO(30, 33, 45, 1)),
        textAlign: TextAlign.center)
  ];
  var options = [
    [
      Text(
        "The two seconds rule",
        style: TextStyle(color: Color.fromRGBO(30, 33, 45, 1), fontSize: 17),
      ),
      Text(
        "The half second rule",
        style: TextStyle(color: Color.fromRGBO(30, 33, 45, 1), fontSize: 17),
      ),
      Text(
        "The one second rule",
        style: TextStyle(color: Color.fromRGBO(30, 33, 45, 1), fontSize: 17),
      ),
      Text(
        "None of the above",
        style: TextStyle(color: Color.fromRGBO(30, 33, 45, 1), fontSize: 17),
      )
    ],
    [
      Text(
        "The left lane",
        style: TextStyle(color: Color.fromRGBO(30, 33, 45, 1), fontSize: 17),
      ),
      Text(
        "The middle lane",
        style: TextStyle(color: Color.fromRGBO(30, 33, 45, 1), fontSize: 17),
      ),
      Text(
        "The right lane",
        style: TextStyle(color: Color.fromRGBO(30, 33, 45, 1), fontSize: 17),
      ),
      Text(
        "The hard shoulder",
        style: TextStyle(color: Color.fromRGBO(30, 33, 45, 1), fontSize: 17),
      )
    ],
    [
      Text(
        "10 m",
        style: TextStyle(color: Color.fromRGBO(30, 33, 45, 1), fontSize: 17),
      ),
      Text(
        "20 m",
        style: TextStyle(color: Color.fromRGBO(30, 33, 45, 1), fontSize: 17),
      ),
      Text(
        "16.66 m",
        style: TextStyle(color: Color.fromRGBO(30, 33, 45, 1), fontSize: 17),
      ),
      Text(
        "33.2 m",
        style: TextStyle(color: Color.fromRGBO(30, 33, 45, 1), fontSize: 17),
      )
    ],
    [
      Text(
        "Defensive Driver Training for all Associates",
        style: TextStyle(color: Color.fromRGBO(30, 33, 45, 1), fontSize: 17),
      ),
      Text(
        "Use of Seat belts for Rear Passengers",
        style: TextStyle(color: Color.fromRGBO(30, 33, 45, 1), fontSize: 17),
      ),
      Text(
        "No Use of Mobile Phone while driving",
        style: TextStyle(color: Color.fromRGBO(30, 33, 45, 1), fontSize: 17),
      ),
      Text(
        "All of the above",
        style: TextStyle(color: Color.fromRGBO(30, 33, 45, 1), fontSize: 17),
      )
    ],
    [
      Text(
        "Gear - mirror - signal",
        style: TextStyle(color: Color.fromRGBO(30, 33, 45, 1), fontSize: 17),
      ),
      Text(
        "Mirror - gear - signal",
        style: TextStyle(color: Color.fromRGBO(30, 33, 45, 1), fontSize: 17),
      ),
      Text(
        "Signal - gear - mirror",
        style: TextStyle(color: Color.fromRGBO(30, 33, 45, 1), fontSize: 17),
      ),
      Text(
        "None of the above",
        style: TextStyle(color: Color.fromRGBO(30, 33, 45, 1), fontSize: 17),
      )
    ]
  ];
  var ans = [1, 2, 2, 4, 3];

  var total = 10;
  var counter = 0;
  var myScore = 0;
  var myChoice = 1;

  changeScore() {
    setState(() {
      if (myChoice == ans[counter]) {
        myScore = myScore + 1;
      }
      total = total - 1;
    });
    counter++;
    //log(myScore.toString());
    if (counter >= 4) {
      var x = myScore;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Result(res: x)),
      );
      counter = 0;
      total = 10;
      myScore = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(250, 243, 224, 1),
        appBar: AppBar(
          title: Text("Traffic Rule and Traffic Sign Quiz"),
          backgroundColor: Color.fromRGBO(30, 33, 45, 1),
        ),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Text(
            (counter + 1).toString() + " / 10",
            style: TextStyle(
              color: Color.fromRGBO(182, 137, 115, 1),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          questions[counter],
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromRGBO(234, 191, 159, 1))),
              onPressed: () {
                setState(() {
                  myChoice = 1;
                  changeScore();
                });
              },
              child: options[counter][0]),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromRGBO(234, 191, 159, 1))),
              onPressed: () {
                setState(() {
                  myChoice = 2;
                  changeScore();
                });
              },
              child: options[counter][1]),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromRGBO(234, 191, 159, 1))),
              onPressed: () {
                setState(() {
                  myChoice = 3;
                  changeScore();
                });
              },
              child: options[counter][2]),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromRGBO(234, 191, 159, 1))),
              onPressed: () {
                setState(() {
                  myChoice = 4;
                  changeScore();
                });
              },
              child: options[counter][3])
        ]),
      ),
    );
  }
}

class Result extends StatelessWidget {
  int res = 0;
  Result({this.res});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: Center(
        child: Text(res.toString()),
      ),
    );
  }
}
