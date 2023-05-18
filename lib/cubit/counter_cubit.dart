import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter_app/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  int teamAPoints = 0;
  int teamBPoints = 0;

  // void TeamAIncrement(int buttonNumber) {
  //   teamAPoints += buttonNumber;
  //   emit(CounterAIncrementState());
  // }

  // void TeamBIncrement(int buttonNumber) {
  //   teamBPoints += buttonNumber;
  //   emit(CounterBIncrementState());
  // }

  // or easier

  void TeamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAIncrementState());
    }
    if (team == 'B') {
      teamBPoints += buttonNumber;
      emit(CounterBIncrementState());
    }
  }

  void Rest() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterAIncrementState());
  }
}
