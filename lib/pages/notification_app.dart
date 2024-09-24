import 'package:flutter/material.dart';

class NotificationApp extends StatefulWidget {
  const NotificationApp({super.key});

  @override
  State<NotificationApp> createState() => _NotificationAppState();
}

class _NotificationAppState extends State<NotificationApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Notification App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text("My World"),
      ),
    );
  }
}
