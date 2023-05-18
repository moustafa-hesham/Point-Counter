import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter_app/cubit/counter_cubit.dart';
import 'package:points_counter_app/cubit/counter_state.dart';

import 'consts.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Points counter"),
            backgroundColor: kPrimaryColor,
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
                        Text(
                            '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                            style: TextStyle(fontSize: 160)),
                        ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'A', buttonNumber: 1);
                            },
                            child: Text(
                              'Add 1 Point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 50),
                              backgroundColor: kPrimaryColor,
                            )),
                        Spacer(
                          flex: 1,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'A', buttonNumber: 2);
                            },
                            child: Text(
                              'Add 2 Point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 50),
                              backgroundColor: kPrimaryColor,
                            )),
                        Spacer(
                          flex: 1,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'A', buttonNumber: 3);
                            },
                            child: Text(
                              'Add 3 Point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 50),
                              backgroundColor: kPrimaryColor,
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
                        Text(
                            "${BlocProvider.of<CounterCubit>(context).teamBPoints}",
                            style: TextStyle(fontSize: 160)),
                        ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'B', buttonNumber: 1);
                            },
                            child: Text(
                              'Add 1 Point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 50),
                              backgroundColor: kPrimaryColor,
                            )),
                        Spacer(
                          flex: 1,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'B', buttonNumber: 2);
                            },
                            child: Text(
                              'Add 2 Point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 50),
                              backgroundColor: kPrimaryColor,
                            )),
                        Spacer(
                          flex: 1,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'B', buttonNumber: 3);
                            },
                            child: Text(
                              'Add 3 Point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 50),
                              backgroundColor: kPrimaryColor,
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
                    BlocProvider.of<CounterCubit>(context).Rest();
                  },
                  child: Text(
                    'Rest',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(150, 50),
                    backgroundColor: kPrimaryColor,
                  )),
            ],
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
