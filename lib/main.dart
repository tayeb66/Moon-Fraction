import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var leftValue = 300.0;
  var _opacity = 1.0;
  var _xOffset = 0.0;
  var _yOffset = 0.0;
  var _blurRadius = 0.0;
  var _spreadRadius = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Moon Fraction"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           /* Stack(
              children: [
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/images/moon.png")
                    ),
                    boxShadow: [
                      BoxShadow(
                        //color: Color.fromRGBO(0, 0, 0, _opacity),
                        offset: Offset(_xOffset, _yOffset),
                        blurRadius: _blurRadius,
                        spreadRadius: _spreadRadius
                      )
                    ]
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      shape: BoxShape.circle
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20.0,),
            Slider(
                value: _xOffset,
                min: -100,
                max: 100,
                onChanged: (value){
              setState(() {
                _xOffset = value;
              });
            }),*/
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 400,
                  width: 400,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/moon.png")),
                  ),
                ),
                Positioned(
                  left: leftValue,
                  child: Container(
                    height: 380,
                    width: 380,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.9),
                        shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0,),
            Text("Moon fraction : ${leftValue.toString()}",
              textScaler: const TextScaler.linear(1.3),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            const SizedBox(height: 10.0,),
            Slider(
              value: leftValue,
              min: 0.0,
              max: 400.0,
              onChanged: (value){
                setState(() {
                  leftValue = value;
                  print("leftValue : $leftValue");
                });
              },
            ),
            const SizedBox(height: 10.0,),
          ],
        ),
      ),
    );
  }
}

