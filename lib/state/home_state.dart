import 'package:mvvm_sample/model/counter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(Counter(0)) Counter counter,
  }) = _HomeState;
}