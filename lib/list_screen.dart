import 'package:flutter/material.dart';
import 'package:tugas_habib/gambar_screen.dart';
import 'package:tugas_habib/kalkulator_screen.dart';
import 'package:tugas_habib/screen2.dart';
import 'package:tugas_habib/textformfield.dart';
import 'package:tugas_habib/tugas1.dart';
import 'package:tugas_habib/tugasthea.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Screen"),
        backgroundColor: const Color.fromARGB(255, 68, 211, 255),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {
          // ini nagivasi
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_)=>Screen2(),
              ),
            );},
            child: Text("screen2")
          ),
          ElevatedButton(onPressed: () {
          // ini nagivasi
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_)=>KalkulatorScreen(),
              ),
            );},
            child: Text("Kalkulator")
          ),
          ElevatedButton(onPressed: () {
          // ini nagivasi
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_)=>GambarScreen(),
              ),
            );},
            child: Text("gambar")
          ),
          ElevatedButton(onPressed: () {
          // ini nagivasi
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_)=>tugas(),
              ),
            );},
            child: Text("Tugas")
          ),
          ElevatedButton(onPressed: () {
          // ini nagivasi
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_)=>tugasthea(),
              ),
            );},
            child: Text("tugas thea")
          ),
        ElevatedButton(onPressed: () {
          // ini nagivasi
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_)=>NilaiAkhir(),
              ),
            );},
            child: Text("Nilai akhir")
          ),
          
        ],
      ),
    );
  }
}