import 'package:flutter/material.dart';
import 'package:fluttertesting/ScaffoldExample.dart';
import 'package:fluttertesting/quote_app/quote.dart';

import 'examples/card.dart';

void main() {
  runApp(
    MaterialApp(
      // home: ScaffoldExample(),
      home: Wisdom(),
    )
  );
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.amber,
      // animationDuration: new Duration(),
      child: Column(
         // verticalDirection: VerticalDirection.up,
        // textDirection: new ,
        children: [
          Center(

            child: Text(
              "Jai Dada",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                // background: ,
color: Color.fromARGB(100, 100, 250, 150)
              ),
              ),
          )
        ],
      ),
    );
  }
}
