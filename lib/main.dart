

import 'package:flutter/material.dart';

void main() {
  runApp(const KeivenGuerraApp());
}

class KeivenGuerraApp extends StatefulWidget {
  const KeivenGuerraApp({super.key});

  @override
  State<KeivenGuerraApp> createState() => _KeivenGuerraAppState();
}

class _KeivenGuerraAppState extends State<KeivenGuerraApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('UnitecnarAPP'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 160,
                  fontWeight: FontWeight.w100,
                ),
              ),
              Text(
                'Clicks${counter == 1 ? "" : "s"}',
                style: const TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: 'sumar',
              child: const Icon(Icons.plus_one),
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
            ),
            const SizedBox(height: 20),
            FloatingActionButton(
              heroTag: 'restar',
              child: const Icon(Icons.exposure_minus_1),
              onPressed: () {
                setState(() {
                  if (counter > 0) {
                    counter--;
                  }
                });
              },
            ),
            const SizedBox(height: 20),
            FloatingActionButton(
              heroTag: 'reiniciar',
              child: const Icon(Icons.refresh),
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
