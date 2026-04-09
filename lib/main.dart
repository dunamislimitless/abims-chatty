import 'package:flutter/material.dart';
import 'package:gtateth_flutter_sdk/gtateth_flutter_sdk.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        scaffoldBackgroundColor: const Color(0xFFF4F6FB),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Chats'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.support_agent,
                  size: 72,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Need help?',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Tap the button below to speak with support.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                const SizedBox(height: 24),
                FilledButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SupportPage(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.chat),
                  label: const Text('Speak with Support'),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SupportPage()),
          );
        },
        tooltip: 'Open support chat',
        child: const Icon(Icons.chat),
      ),
    );
  }
}

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Support')),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: GtatethChatWidget(
          // settings: ChatWidgetSettings(
          //   title: 'Support Chat',
          //   emptyStateText: 'Welcome! How can we help?',
          //   messageInputHintText: 'Wetin Dey Sup?',
          //   showConnectionIndicator: true,
          //   showAgentNames: true,
          //   showErrorBanner: true,
          //   messageMaxWidth: 360,
          //   composerMinLines: 1,
          //   composerMaxLines: 6,
          // ),
          config: const WidgetClientConfig(
            baseUrl: 'https://api.g-tateth.com',
            tenantDomain: "g-tateth-solutions",
          ),
          allowInAppCustomization: true,
          customer: ChatCustomer(
            firstName: "Abimbola",
            lastName: "Ogundipe",
            email: "abimbola.ogundipe@example.com",
          ),
        ),
      ),
    );
  }
}
