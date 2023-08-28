import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Hasil extends StatelessWidget {
  // const Hasil({super.key});
  int totalSkor;

  VoidCallback resetKuis; // Update the type here

  Hasil(this.totalSkor, this.resetKuis);

  String get hasilText {
    String hasil = "Anda Berhasil";
    if (totalSkor <= 8) {
      hasil = "Anda Hebat Sekali";
    } else if (totalSkor <= 12) {
      hasil = "Yuk Coba";
    } else {
      hasil = "Coba Lagi KMAU NIH !!!";
    }
    return hasil;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            hasilText,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: resetKuis,
            child: Text("Tekan lagi"),
            style: TextButton.styleFrom(
              iconColor: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
