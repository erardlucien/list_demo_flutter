import 'package:demo04/list_wrapper.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'List Demo',
      home: ListWrapper(),
    );
  }
}
