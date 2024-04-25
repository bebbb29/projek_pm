import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GambarScreen extends StatefulWidget {
  const GambarScreen({super.key});

  @override
  State<GambarScreen> createState() => _GambarScreenState();
}

class _GambarScreenState extends State<GambarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gambar Screen'),
        backgroundColor: Colors.red,
      ),
      body: GridView.count(crossAxisCount: 3,
        children: [
          GestureDetector(
            onTap: () {
              print("tll");
            },
            child: Card(child: Image.asset("asset/gambar/card-deck.png"),)),
          Card(child: Image.asset("asset/gambar/card-deck.png"),),
          Card(child: Image.asset("asset/gambar/barca.png"),),
          Card(child: Image.asset("asset/gambar/card-deck.png"),),          
        ]
      )
    );
  }
}
