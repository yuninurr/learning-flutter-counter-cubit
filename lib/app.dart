import 'package:flutter/material.dart';
import 'package:flutter_application_1/counter/counter.dart';

class CounterApp extends MaterialApp {
  const CounterApp({super.key})
      : super(
          debugShowCheckedModeBanner: false,
          home: const CounterPage(),
        );
}
