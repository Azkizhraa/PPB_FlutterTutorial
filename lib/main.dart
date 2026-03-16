import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My first app"),
        centerTitle: true,
        backgroundColor: Colors.amber[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Top Section: Image Box
            Container(
              padding: const EdgeInsets.all(30.0),
              color: Colors.cyan[100],
              child: Image.asset(
                'assets/scenery.jpg',
                height: 400,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),

            // Middle Section: Text Box
            Container(
              padding: const EdgeInsets.all(30.0),
              color: Colors.pink[100],
              child: const Text(
                'What image is that?',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 10),

            // Bottom Section: Icon Row
            Container(
              padding: const EdgeInsets.all(20.0),
              color: Colors.amber[100],
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconColumn(icon: Icons.restaurant, label: 'Food'),
                  IconColumn(icon: Icons.beach_access, label: 'Scenery'),
                  IconColumn(icon: Icons.person, label: 'People'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Reusable widget for the Icon + Text combo
class IconColumn extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconColumn({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 30),
        const SizedBox(height: 5),
        Text(label),
      ],
    );
  }
}