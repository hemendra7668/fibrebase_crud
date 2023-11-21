import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/provider.dart';

class Free extends StatefulWidget {
  const Free({super.key});
  @override
  State<Free> createState() => _FreeState();
}

class _FreeState extends State<Free> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(context.watch<PushToData>().getname),
    );
  }
}
