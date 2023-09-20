import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AngerManagementScreen extends StatelessWidget {
  const AngerManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.teal.shade200,
    ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 50),
            child: Text(
              "How to Manage Your Anger",
              style: TextStyle(
                color: Colors.brown,
                fontSize: 25,
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
          Image.asset('assets/images/AngerManagement.jpg'),
          Padding(padding: const EdgeInsets.symmetric(vertical: 20),
            child: ElevatedButton(
              onPressed: () => context.go('/calm'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal.shade200),
              child: const Text('Calm Down Fast'),
            ),),
          Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            child: ElevatedButton(
              onPressed: () => context.go('/contact'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal.shade200),
              child: const Text('Contact Me'),
            ),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ElevatedButton(
              onPressed: () => context.go('/welcome'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal.shade200),
              child: const Text('Back'),
            ),
          )
        ],
      ),
    );
  }
}

