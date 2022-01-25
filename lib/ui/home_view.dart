import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:mvvm_sample/provider/counter_provider.dart';

class HomeView extends HookWidget {
  const HomeView({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final _count = useProvider(homeViewModelProvider);

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
                  _count.toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.read(homeViewModelProvider.notifier).incrementCounter(),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
    );
  }
}