
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              'Click${counter == 1 ? '' : 's'}',
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _CustomButton(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() {
                counter++;
              });
            },
          ),
          const SizedBox(height: 20),
          _CustomButton(
            icon: Icons.exposure_minus_1,
            onPressed: () {
              setState(() {
                if (counter > 0) {
                  counter--;
                }
              });
            },
          ),
          const SizedBox(height: 20),
          _CustomButton(
            icon: Icons.refresh,
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
          ),
        ],
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _CustomButton({
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      elevation: 5,
      backgroundColor: const Color.fromRGBO(16, 172, 29, 1),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
