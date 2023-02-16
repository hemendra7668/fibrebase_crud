import 'package:ano/anot.dart';
import 'package:ano/isposition.dart';
import 'package:ano/modals/newmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/provider.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [ChangeNotifierProvider(create: (context) => PushToData())],
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Isposition(),
    );
  }
}
