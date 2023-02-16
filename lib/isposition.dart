import 'dart:convert';

import 'package:ano/apisee.dart';
import 'package:ano/modals/newmodel.dart';
import 'package:flutter/material.dart';

class Isposition extends StatefulWidget {
  const Isposition({super.key});

  @override
  State<Isposition> createState() => _IspositionState();
}

class _IspositionState extends State<Isposition> {
  Autogenerated? obj1;
  satelite() async {
    Autogenerated? obj2 = await BackEnd.callAPI();
    await Future.delayed(const Duration(milliseconds: 15));
    setState(() {
      obj1 = obj2;
    });
  }

  @override
  void initState() {
    super.initState();
    satelite();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Space station postioning "),
        centerTitle: true,
      ),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 237, 234, 227),
            // image: const DecorationImage(
            //   image: NetworkImage('https://example.com/image.jpg'),
            //   fit: BoxFit.cover,
            // ),
          ),
          child: obj1 != null
              ? ListTile(
                  trailing: SizedBox(
                    width: 80.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("timestamp"),
                        Text(obj1!.timestamp.toString())
                      ],
                    ),
                  ),
                  title: Text(obj1!.message!),
                  subtitle: Row(
                    children: [
                      Text(obj1!.issPosition!.latitude!),
                      const SizedBox(
                        width: 40.0,
                      ),
                      Text(
                        obj1!.issPosition!.longitude!,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              : Container(
                  child: Center(child: CircularProgressIndicator()),
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //     image: NetworkImage('https://picsum.photos/200'),
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                ),
        ),
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("spa.jpg"),
                  fit: BoxFit.fill,
                  opacity: 0.9)),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          satelite();
        },
        child: const Icon(Icons.refresh_rounded),
      ),
    );
  }
}
