import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  const Wisdom({Key? key}) : super(key: key);

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {

  int _index = 0;
  List quotes = [
    "quote 1",
    "quote 2",
    "quote 3",
    "quote 4",
    "quote 5",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(quotes[_index % quotes.length], style: TextStyle(

            )),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Center(
                child: ElevatedButton.icon(
                  style: ButtonStyle(),
                  icon: const Icon(Icons.sunny),
                  label: const Text("Gimme Quote!!!"),
                  onPressed: _showQuote,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showQuote() {

    setState(() {
      _index += 1 ;
      print("click $_index");
    });
  }
}
