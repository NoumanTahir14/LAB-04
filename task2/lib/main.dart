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
      home: ComplexUI(),
    );
  }
}

class ComplexUI extends StatelessWidget {
  const ComplexUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Complex UI'),
        backgroundColor: Colors.deepPurple, // Vibrant app bar color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.pink.shade100, // Vibrant container color
              child: const Text(
                'User Information Form',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
            ),
            const SizedBox(height: 20),

            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your name',
                labelStyle: TextStyle(
                  color: Colors.orange,
                ), // Vibrant label color
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                  ), // Vibrant border color
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Row for buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Submit button action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Vibrant button color
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    // Clear button action
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: Colors.red,
                    ), // Vibrant border color
                  ),
                  child: const Text(
                    'Clear',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Container for showing additional details
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.cyan.shade100, // Vibrant container color
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Name:',
                        style: TextStyle(fontSize: 16, color: Colors.cyan),
                      ),
                      Text(
                        'Age:',
                        style: TextStyle(fontSize: 16, color: Colors.cyan),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.cyan,
                  ), // Vibrant icon color
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
