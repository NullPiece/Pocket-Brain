import 'package:flutter/material.dart';
import '../models/test_msg_model.dart';
import '../services/test_msg_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<TestMsg> _futureTestMsg;

  @override
  void initState() {
    super.initState();
    // Initialize the service and call the method
    _futureTestMsg = TestMsgService().fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pocket-Brain'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: FutureBuilder<TestMsg>(
          future: _futureTestMsg,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator(); // Show loading while waiting
            } else if (snapshot.hasData) {
              return Text(snapshot.data!.msg, style: Theme.of(context).textTheme.headlineMedium);
            } else if (snapshot.hasError) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Error: ${snapshot.error}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.red),
                ),
              );
            }
            return const Text('No album data available'); // Default case
          },
        ),
      ),
    );
  }
}