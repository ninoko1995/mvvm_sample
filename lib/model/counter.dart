import 'package:flutter/material.dart';

@immutable
class Counter {
  const Counter(this.count);
  final int count;

  Counter incrementCount() {
    return Counter(count + 1);
  }
}