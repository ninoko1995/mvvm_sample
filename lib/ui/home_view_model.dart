import 'package:riverpod/riverpod.dart';
import 'package:mvvm_sample/model/counter.dart';

class HomeViewModel extends StateNotifier<Counter> {
  HomeViewModel() : super(const Counter(0));
  void incrementCounter() => state = state.incrementCount();
}