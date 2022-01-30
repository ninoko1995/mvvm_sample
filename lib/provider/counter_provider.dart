import 'package:riverpod/riverpod.dart';
import 'package:mvvm_sample/ui/home_view_model.dart';
import 'package:mvvm_sample/state/home_state.dart';

final homeViewModelProvider =
StateNotifierProvider<HomeViewModel, HomeState>((ref) => HomeViewModel());