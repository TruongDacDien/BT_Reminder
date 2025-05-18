// main.dart
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/reminders_screen.dart';
import 'screens/add_reminder_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reminders App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ).copyWith(
          secondary: Colors.orangeAccent,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/reminders': (context) => const RemindersScreen(),
        '/add-reminder': (context) => const AddReminderScreen(),
      },
    );
  }
}