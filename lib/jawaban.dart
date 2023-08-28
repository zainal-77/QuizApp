import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  // const Jawaban({super.key});
  String jawabanText;
  final handlePilih;
  Jawaban(this.handlePilih, this.jawabanText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: handlePilih,
        child: Text(jawabanText),
      ),
    );
  }
}
