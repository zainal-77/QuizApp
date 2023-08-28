import 'package:flutter/material.dart';
import './kuis.dart';
import './hasil.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //const MyApp({Key? key}) : super(key: key);
  var _soalIndex = 0;
  var totalSkor = 0;

  var pertanyaan = [
    {
      'pertanyaan': 'warna',
      'jawaban': [
        {'teks': 'hijau', 'skor': 10},
        {'teks': 'htam', 'skor': 1},
        {'teks': 'putih', 'skor': 3},
        {'teks': 'ungu', 'skor': 5},
      ],
    },
    {
      'pertanyaan': 'gunung',
      'jawaban': [
        {'teks': 'himalaya', 'skor': 10},
        {'teks': 'bromo', 'skor': 1},
        {'teks': 'everest', 'skor': 3},
        {'teks': 'pirtus', 'skor': 5},
      ],
    },
    {
      'pertanyaan': 'wilayaha',
      'jawaban': [
        {'teks': 'jatim', 'skor': 10},
        {'teks': 'jateng', 'skor': 1},
        {'teks': 'jabar', 'skor': 3},
        {'teks': 'dki', 'skor': 5},
      ],
    }
  ];

  void _jawaban(int skor) {
    //  print('Jawaban Sudah dipilih');
    totalSkor = totalSkor + skor;
    setState(() {
      _soalIndex += 1;
    });
    if (_soalIndex < pertanyaan.length) {
      print("Masi ada soal berikutnya");
    } else {
      print("Sudah tidak ada soal");
    }
  }

  void resetKuis() {
    setState(() {
      _soalIndex = 0;
      totalSkor = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Aplikasi Kuis"),
          ),
          body: _soalIndex < pertanyaan.length
              ? Kuis(
                  jawaban: _jawaban,
                  pertanyaan: pertanyaan,
                  soalIndex: _soalIndex,
                )
              : Hasil(totalSkor, resetKuis)),
    );
  }
}
