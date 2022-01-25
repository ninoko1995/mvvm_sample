import 'package:riverpod/riverpod.dart';
import 'package:mvvm_sample/ui/home_view_model.dart';

final homeViewModelProvider =
StateNotifierProvider<HomeViewModel, int>((ref) => HomeViewModel());