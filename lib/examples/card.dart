import 'package:flutter/material.dart';

class ShivCard extends StatelessWidget {
  const ShivCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shiv Engineering"),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.greenAccent,
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [_getCard(), _getAvatar()],
        ),
      ),
    );
  }
}

Container _getCard() {
  return Container(
    width: 300,
    height: 300,
    margin: EdgeInsets.all(50.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.amberAccent,
    ),
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        "Shiv Engineering",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
      ),
      Container(
        margin: EdgeInsets.all(10),
        child: Text(
          "All kinds of engineering works",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Jai ho"), Text(" Jai dada")],
      )
    ]),
  );
}

Container _getAvatar() {
  return Container(
    height: 100,
    width: 100,
    // alignment: Alignment.topCenter,
    decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(50)),
        image: DecorationImage(
            image: NetworkImage("https://picsum.photos/200/300"),
            fit: BoxFit.cover)),
  );
}
