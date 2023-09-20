import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ContactMeScreen extends StatelessWidget {
  const ContactMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade200,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/ContactMe.jpeg'),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Text(
              'Contact Me at 01033881155',
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ElevatedButton(
              onPressed: () => context.go('/calm'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal.shade200),
              child: const Text('Back'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ElevatedButton(
              onPressed: () => context.go('/welcome'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal.shade200),
              child: const Text('Back to Home-Screen'),
            ),
          )
        ],
      ),
    );
  }
}
