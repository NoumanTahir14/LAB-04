import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple UI')),
      backgroundColor: Colors.grey, 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Nouman Tahir 474537', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Button action
              },
              icon: const Icon(Icons.thumb_up),
              label: const Text('Like'),
            ),
          ],
        ),
      ),
    );
  }
}
