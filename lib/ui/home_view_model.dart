import 'package:riverpod/riverpod.dart';
import 'package:mvvm_sample/model/counter.dart';
import 'package:mvvm_sample/state/home_state.dart';

class HomeViewModel extends StateNotifier<HomeState> {
  HomeViewModel() : super(const HomeState(counter: Counter(0)));

  void incrementCounter() => state = HomeState(counter: state.counter.incrementCount());
}