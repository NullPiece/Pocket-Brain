import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const PocketBrainApp());
}

class PocketBrainApp extends StatelessWidget {
  const PocketBrainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pocket-Brain Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
