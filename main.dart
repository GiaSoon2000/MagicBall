import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    BallPage()
  );
}

class BallPage extends StatelessWidget {
  const BallPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: Scaffold(
          backgroundColor: Colors.lightBlueAccent,
            appBar: AppBar(
             title: Center(child: Text('Ask Me Anything')),
            backgroundColor: Colors.blue,
            ),
          body: Ball(),
      ),
    );
  }
}


class Ball extends StatefulWidget {
  const Ball ({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallPageState();
}

class _BallPageState extends State<Ball> {

  int ballNumber = 1;

  void randomize(){
    ballNumber = Random().nextInt(5) + 1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          children: [
        Expanded(
          child: Padding(
          padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: (){
                setState((){
                  randomize();
                });
                print('Ball $ballNumber is pressed');
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ),
       ],
      ),
    );
  }
}

