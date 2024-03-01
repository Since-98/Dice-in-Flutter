import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Myopdracht8App());
}

class Myopdracht8App extends StatefulWidget {
  const Myopdracht8App({super.key});

  @override
  State<Myopdracht8App> createState() => _Myopdracht8AppState();
}

class _Myopdracht8AppState extends State<Myopdracht8App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Opdracht 8')),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image/bac.jpg"),
              fit: BoxFit.cover,
            )
          ),
          child: Column(
            children: [
              //Dobbelstenen1
              SizedBox(
                height: 50,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Regel(index);
                  },
                ),
              ),

              //Dobbelsteen2

              //....

              //butten werp de stenen
              WerpDestenen(),

              //marge
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Regel(int index) {
    int ogen = Random().nextInt(6) + 1;

    List<String> _internetAfbeeldingen = [
      'https://dobbelsteen.virtuworld.net/img/1c.gif',
      'https://dobbelsteen.virtuworld.net/img/2c.gif',
      'https://dobbelsteen.virtuworld.net/img/3c.gif',
      'https://dobbelsteen.virtuworld.net/img/4c.gif',
      'https://dobbelsteen.virtuworld.net/img/5c.gif',
      'https://dobbelsteen.virtuworld.net/img/6c.gif',
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Plaatje in de assets
        SizedBox(
          height: 50,
          width: 50,
          child: Image.asset('assets/image/$ogen.png'),
        ),
      //witruimte
        SizedBox(
          width: 20,
        ),

        //Text
        Container(
          color: Colors.black,
          width: 50,
          height: 50,
          child: Center(
            child: Text(
              ogen.toString(),
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
        ),

        SizedBox(
          width: 20,
        ),
        //Plaatje van internet
        SizedBox(
          height: 50,
          width: 50,
          child: Image.network(_internetAfbeeldingen[ogen-1]),
        ),
      ],
    );
  }

  WerpDestenen() {
    return ElevatedButton(
        onPressed: () {
          setState(() {});
        },
        child: Text('werp de stenen'));
  }
}
