import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:mvvm_sample/ui/home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => HomeViewModel(),
      child: Scaffold(
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
              Consumer<HomeViewModel>(
                builder: (context, homeViewModel, _) => Text(
                  context.select((HomeViewModel homeViewModel) => homeViewModel.value.toString()),
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Consumer<HomeViewModel>(
          builder: (context, homeViewModel, _) => FloatingActionButton(
            onPressed: () => context.read<HomeViewModel>().incrementCounter(),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}