import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade200,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/Welcome.jpg'),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Welcome to the < Calm Down > app",
              style: TextStyle(
                color: Colors.brown,
                fontSize: 20,
                shadows: [
                  Shadow(
                    blurRadius: 5,
                    color: Colors.tealAccent,
                    offset: Offset(2, 2),
                  )
                ],
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            child: ElevatedButton(
              onPressed: () => context.go('/anger'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent),
              child: const Text('Manage your Anger'),
            ),),
          Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            child: ElevatedButton(
              onPressed: () => context.go('/calm'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal.shade200),
              child: const Text('Calm Down Fast'),
            ),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ElevatedButton(
              onPressed: () => context.go('/contact'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown),
              child: const Text('Contact Me'),
            ),
          )
        ],
      ),
    );
  }
}
