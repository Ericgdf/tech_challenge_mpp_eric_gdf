import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

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
              seedColor: const Color.fromARGB(255, 24, 122, 131)),
          fontFamily:
              GoogleFonts.urbanist(fontWeight: FontWeight.w500).fontFamily,
        ),
        home: HomePage());
  }
}

// Home Page widget with a button link to Contact Page
class HomePage extends StatelessWidget {
  HomePage({super.key});
  final IconData icon = Icons.flutter_dash_rounded;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to my tech challenge',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white)),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContactPage()),
                );
              },
              icon: Icon(icon),
              label:
                  const Text('Go to contact', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}

// Contact Page Widget with an AppBar and body who generate Conctact Card
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
          padding: const EdgeInsets.only(top: 40.0),
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

// Contact card widget used on the Contact page component
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
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('John', style: TextStyle(fontSize: 18)),
                      SizedBox(width: 10),
                      Text('Doe', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('064242424', style: TextStyle(fontSize: 14)),
                      IconButton(
                        iconSize: 20,
                        icon: const Icon(Icons.phone_android),
                        onPressed: () {
                          final snackBar = SnackBar(
                            content: const Text('Number copy to the clipBoard'),
                            action: SnackBarAction(
                              label: 'Undo',
                              onPressed: () {
                                // Some code to undo the change.
                              },
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                      ),
                    ],
                  ),
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
