import 'package:flutter/material.dart';

class Pertanyaan extends StatelessWidget {
  Pertanyaan(this.pertanyaan);

  // const MyWidget({super.key});

  var pertanyaan;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        pertanyaan,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
