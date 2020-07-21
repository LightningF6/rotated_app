import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Strada v0.1',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Strada'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  double _sliderValue1 = 3;
  double _sliderValue2 = 3;
  double _sliderValue3 = 3;
  double _sliderValue4 = 3;
  String _decision = 'The decision';

  @override
  Widget build(BuildContext context) {

    return
      SafeArea(
        child:
      Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 50.0),
              child: Text(_decision,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
                color: Colors.deepPurple,
              ),),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                  'Influence 1',
                    overflow: TextOverflow.ellipsis,
                ),
                  RotatedBox(quarterTurns: -1,
                    child: Slider(
                      min: 1,
                      max: 9,
                      onChanged: (influence){
                        setState(() => _sliderValue1 = influence);
                        log('inf1: $_sliderValue1');
                      },
                      value: _sliderValue1,
                    ),
                  ),]
                ),

                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Influence 2',
                        overflow: TextOverflow.ellipsis,
                      ),
                      RotatedBox(quarterTurns: -1,
                        child: Slider(
                          min: 1,
                          max: 9,
                          onChanged: (influence){
                            setState(() => _sliderValue2 = influence);
                            log('inf2: $_sliderValue2');
                          },
                          value: _sliderValue2,
                        ),
                      ),]
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Influence 3',
                        overflow: TextOverflow.ellipsis,
                      ),
                      RotatedBox(quarterTurns: -1,
                        child: Slider(
                          min: 1,
                          max: 9,
                          onChanged: (influence){
                            setState(() => _sliderValue3 = influence);
                            log('inf3: $_sliderValue3');
                          },
                          value: _sliderValue3,
                        ),
                      ),]
                ),

                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Influence 4',
                        overflow: TextOverflow.ellipsis,
                      ),
                      RotatedBox(quarterTurns: -1,
                        child: Slider(
                          min: 1,
                          max: 9,
                          onChanged: (influence){
                            setState(() => _sliderValue4 = influence);
                            log('inf4: $_sliderValue4');
                          },
                          value: _sliderValue4,
                        ),
                      ),]
                ),
              ],
            )

          ],
        ),
      ),
      ),
      );
  }
}
