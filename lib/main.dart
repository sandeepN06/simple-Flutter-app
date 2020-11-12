import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Magic Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left = 3;
  int right = 4;

  void ChangeFace()
  {
    setState(() {
      left = Random().nextInt(6)+1;
      right = Random().nextInt(6)+1;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                // flex: 1,
                child: FlatButton(
                  onPressed: (){
                    ChangeFace();
                  },
                  child: Image.asset('images/dice$left.png'),
                ),
              ),
              Expanded(
                // flex: 1,
                child: FlatButton(
                  onPressed: (){
                    ChangeFace();
                  },
                  child: Image.asset('images/dice$right.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}


// class DicePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     int left = 5;
//     return Center(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Center(
//           child: Row(
//             children: <Widget>[
//               Expanded(
//                 // flex: 1,
//                 child: FlatButton(
//                   child: Image.asset('images/dice$left.png'),
//                 ),
//               ),
//               Expanded(
//                 // flex: 1,
//                 child: FlatButton(
//                   child: Image.asset('images/dice1.png'),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
