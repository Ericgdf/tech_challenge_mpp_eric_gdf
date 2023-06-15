import 'package:flutter/material.dart';


void main() {
  runApp(const MainApp());
}

// Define all the important information about the App
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tech Challenge Eric Gdf',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 34, 255, 97)),
        ),
        home: HomePage());
  }
}

// Landing page with button
class HomePage extends StatelessWidget {
  HomePage({super.key});
  final IconData icon = Icons.flutter_dash_rounded;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to my tech challenge'),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactPage()),
                );
              },
              icon: Icon(icon),
              label: const Text('Go to contact'),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
 const ContactPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No contact for the moment'),
    );
  }
}
