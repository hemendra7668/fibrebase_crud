import 'package:ano/isposition.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/provider.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [ChangeNotifierProvider(create: (context) => PushToData())],
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Isposition(),
    );
  }
}
