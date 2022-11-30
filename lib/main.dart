// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'person.dart';
import 'view_model.dart';

void main() {
  // final p1 = Person(
  //   id: 1,
  //   name: 'John Doe',
  //   email: 'johndoe@gmail.com',
  // );
  // final p2 = Person(
  //   id: 1,
  //   name: 'John Doe',
  //   email: 'johndoe@gmail.com',
  // );
  // print('identical(p1, p2): ${identical(p1, p2)}');
  // print('p1 == p2: ${p1 == p2}');
  final vm1 = ViewModel(
    name: 'Maria',
    doNothing: () {
      print('Nothing');
    },
  );
  final vm2 = ViewModel(
    name: 'Maria',
    doNothing: () {
      print('Nothing');
    },
  );
  print('identical(vm1, vm2): ${identical(vm1, vm2)}');
  print('vm1 == vm2: ${vm1 == vm2}');

  final vm3 = ViewModel2(name: 'Jane Doe');
  final vm4 = ViewModel2(name: 'Jane Doe');
  print('identical(vm3, vm4): ${identical(vm3, vm4)}');
  print('vm3 == vm4: ${vm3 == vm4}');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
