import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
              seedColor: const Color.fromARGB(255, 14, 96, 86)),
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
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to my tech challenge', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500)),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContactPage()),
                );
              },
              icon: Icon(icon),
              label: const Text('Go to contact', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  final int numberOfCards = 17;
  const ContactPage({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Contact'),
        backgroundColor: theme.colorScheme.surface,
        elevation: 10,
      ),
      body: Container(
       color: theme.colorScheme.primary,
        child: Padding(
          padding: const EdgeInsets.only(top :40.0),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (int i = 0; i < numberOfCards; i++) const ContactCard(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  const ContactCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
  
    return InkWell(
      onTap: () {
        _launchUrl();
      },
      child: Card(
          color: theme.colorScheme.surface,
          elevation: 8.0,
          child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Eric', style: TextStyle(fontSize: 18)),
                      SizedBox(width: 10),
                      Text('GODEFROY', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  Text('0645454545', style: TextStyle(fontSize: 14))
                ],
              ))),
    );
  }
}

// create a variable with url of Google and specified the type
final Uri _url = Uri.parse('https://google.com');
// function who check if the url is working and if not send a message error
Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
