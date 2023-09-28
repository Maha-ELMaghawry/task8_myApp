import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CalmDownScreen extends StatelessWidget {
  const CalmDownScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade200,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 400,
                height: 400,
                child: Image.asset('assets/images/CalmDown.jpg')),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                onPressed: () => context.go('/anger'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal.shade200),
                child: const Text('Back'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: () => context.go('/welcome'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal.shade200),
                child: const Text('Back to Home-Screen'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
