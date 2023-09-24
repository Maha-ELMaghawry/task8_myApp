import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactMeScreen extends StatelessWidget {
  const ContactMeScreen({super.key});

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
              width: 150,
              height: 150,
              child: Image.asset('assets/images/ContactMe.jpeg'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Text(
                'Contact Me at WhatsApp :',
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
            FlutterSocialButton(
              iconColor: Colors.white,
              buttonType: ButtonType.whatsapp,
              mini: true,
              onTap: () {
                openWhatAppChat();
              },
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
      ),
    );
  }

  void openWhatAppChat() async {
    var phoneNumber = '+201033881155';
    await launchUrlString('https://wa.me/$phoneNumber?text=Hello');
  }
}
