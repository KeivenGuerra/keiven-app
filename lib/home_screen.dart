
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    if (counter > 0) {
      setState(() {
        counter--;
      });
    }
  }

  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UnitecnarAPP'),
        centerTitle: true,
        backgroundColor: const Color(0xFF10AC1D),
        foregroundColor: Colors.white,
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
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _CustomButton(
            icon: Icons.plus_one,
            onPressed: incrementCounter,
          ),
          const SizedBox(height: 20),
          _CustomButton(
            icon: Icons.exposure_minus_1,
            onPressed: decrementCounter,
          ),
          const SizedBox(height: 20),
          _CustomButton(
            icon: Icons.refresh,
            onPressed: resetCounter,
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
    return SizedBox(
      width: 56,
      height: 56,
      child: FloatingActionButton(
        onPressed: onPressed,
        shape: const CircleBorder(),
        backgroundColor: const Color(0xFF10AC1D),
        foregroundColor: Colors.white,
        elevation: 6,
        child: Icon(
          icon,
          size: 28,
          color: Colors.white,
        ),
      ),
    );
  }
}