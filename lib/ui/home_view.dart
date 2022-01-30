import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:mvvm_sample/provider/counter_provider.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _counterState = ref.watch(homeViewModelProvider);

    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/img/flutter-icon.png',
                width: 200,
              ),
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                  _counterState.counter.count.toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => ref.read(homeViewModelProvider.notifier).incrementCounter(),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
    );
  }
}