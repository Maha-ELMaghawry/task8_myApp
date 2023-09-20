import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'screen1welcome.dart';
import 'screen2angermanagement.dart';
import 'screen3calmdown.dart';
import 'screen4contactme.dart';

void main() => runApp(const MyApp());

GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'welcome',
          builder: (BuildContext context, GoRouterState state) {
            return const WelcomeScreen();
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'anger',
              builder: (BuildContext context, GoRouterState state) {
                return const AngerManagementScreen();
              },
              routes: <RouteBase>[
                GoRoute(
                  path: 'calm',
                  builder: (BuildContext context, GoRouterState state) {
                    return const CalmDownScreen();
                  },
                  routes: <RouteBase>[
                    GoRoute(
                      path: 'contact',
                      builder: (BuildContext context, GoRouterState state) {
                        return const ContactMeScreen();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
        centerTitle: true,
        backgroundColor: Colors.teal.shade200,
      ),
      body: const MyLogin(),
    );
  }
}

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Username',
            ),
          ),
        ),
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Password"),
            )),
        ElevatedButton(
          onPressed: () => context.go('/welcome'),
          style:
              ElevatedButton.styleFrom(backgroundColor: Colors.teal.shade200),
          child: const Text('Login'),
        ),
      ],
    );
  }
}
