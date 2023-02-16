import 'dart:developer';

import 'package:ano/apisee.dart';
import 'package:ano/modals/api_modals.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'free.dart';
import 'providers/provider.dart';

class Anot extends StatefulWidget {
  const Anot({super.key});

  @override
  State<Anot> createState() => _AnotState();
}

class _AnotState extends State<Anot> {
  Activity? act;
  late TextEditingController name = TextEditingController();
  late TextEditingController name1 = TextEditingController();

  call() async {
    // Activity? obj = await BackEnd.callAPI();
    setState(() {
      // act = obj;
    });
  }

  @override
  void initState() {
    super.initState();
    call();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: call),
      body: Center(
        child: Column(
          children: [
            TextFormField(
              controller: name,
              decoration: const InputDecoration(
                  hintText: "username", labelText: "email"),
            ),
            TextFormField(
                decoration:
                    InputDecoration(hintText: "username", labelText: "pass"),
                controller: name1),
            Column(
                children: act != null
                    ? [
                        Text(act!.activity),
                        Text(act!.type),
                      ]
                    : const [CircularProgressIndicator()]),
            const SizedBox(
              height: 40.0,
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<PushToData>().setTitle(name.text);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Free(),
                      ));
                },
                child: Text("submit")),
          ],
        ),
      ),
    );
  }
}
