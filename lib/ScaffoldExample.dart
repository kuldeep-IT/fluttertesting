import 'package:flutter/material.dart';
import 'package:fluttertesting/custom_ui/custombutton.dart';

class ScaffoldExample extends StatelessWidget {
  //local function
  _btnPress(String abc) {
    debugPrint(abc);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JAI DADA"),
        centerTitle: true,
        backgroundColor: Colors.amber.shade700,
        actions: [
          IconButton(
            icon: Icon(Icons.access_alarm_sharp),
            onPressed: () => debugPrint("Jai Thakar"),
          ),
          IconButton(
              onPressed: () => _btnPress("Jai Mataji"),
              icon: Icon(Icons.connected_tv_sharp))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Jai Dada"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Jai Ho"),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), label: "Jai Mataji")
        ],
        onTap: (index) {
          debugPrint("Our index is ${index}");
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              final snackbar = SnackBar(
                  content: Text(
                "CustomButton",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
              ));

              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: Icon(Icons.accessibility_outlined),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            child: Icon(Icons.star),
            onPressed: () {
              final sb = SnackBar(
                  content: Text(
                "Floating action button 2 clicked",
                style: TextStyle(fontSize: 20, backgroundColor: Colors.grey),
              ));

              ScaffoldMessenger.of(context).showSnackBar(sb);
            },
            heroTag: null,
          )
        ],
      ),
      backgroundColor: Colors.blue.shade100,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          // crossAxisAlignment: ,
          // verticalDirection: VerticalDirection.up,
          children: [
            InkWell(
              child: Text(
                "Tap me!",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 24,
                    fontWeight: FontWeight.w900),
              ),
              onTap: () => debugPrint("Jai Ho"),
            ),
            CustomButton()
          ],
        ),
      ),
    );
  }
}
