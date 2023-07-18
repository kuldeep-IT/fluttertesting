import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final  snackbar = SnackBar(content:
        Text(
          "CustomButton",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal
          ),
        ));

        ScaffoldMessenger.of(context).showSnackBar(snackbar);

      },
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Text("I'm Custtom Button"),
      ),
    );
  }
}
