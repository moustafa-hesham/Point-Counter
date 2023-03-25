import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Points counter"),
          backgroundColor: Colors.red,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    children: [
                      Text("Team A", style: TextStyle(fontSize: 38)),
                      Text("$teamAPoints", style: TextStyle(fontSize: 160)),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamAPoints++;
                            });
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(150, 50),
                            backgroundColor: Colors.red,
                          )),
                      Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamAPoints = teamAPoints + 2;
                            });
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(150, 50),
                            backgroundColor: Colors.red,
                          )),
                      Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamAPoints = teamAPoints + 3;
                            });
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(150, 50),
                            backgroundColor: Colors.red,
                          )),
                      Spacer(
                        flex: 25,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    // indent: 50,
                    // endIndent: 300,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    children: [
                      Text("Team B", style: TextStyle(fontSize: 38)),
                      Text("$teamBPoints", style: TextStyle(fontSize: 160)),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBPoints++;
                            });
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(150, 50),
                            backgroundColor: Colors.red,
                          )),
                      Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBPoints = teamBPoints + 2;
                            });
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(150, 50),
                            backgroundColor: Colors.red,
                          )),
                      Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBPoints = teamBPoints + 3;
                            });
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(150, 50),
                            backgroundColor: Colors.red,
                          )),
                      Spacer(
                        flex: 25,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    teamBPoints = 0;
                    teamAPoints = 0;
                  });
                },
                child: Text(
                  'Rest',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(150, 50),
                  backgroundColor: Colors.red,
                )),
          ],
        ),
      ),
    );
  }
}
