import 'package:riverpod/riverpod.dart';

class HomeViewModel extends StateNotifier<int> {
  HomeViewModel() : super(0);
  void incrementCounter() => state = state + 1;
}