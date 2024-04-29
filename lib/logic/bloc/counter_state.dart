part of 'counter_bloc.dart';

// @immutable
// sealed
class CounterState {
  int counterValue;
  CounterState({required this.counterValue});
}

class CounterInitial extends CounterState {
  CounterInitial() : super(counterValue: 0);
}
