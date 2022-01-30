import 'package:riverpod/riverpod.dart';
import 'package:mvvm_sample/ui/home_view_model.dart';
import 'package:mvvm_sample/model/counter.dart';

final homeViewModelProvider =
StateNotifierProvider<HomeViewModel, Counter>((ref) => HomeViewModel());