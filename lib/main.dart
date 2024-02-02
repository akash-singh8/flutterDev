import 'package:flutter/material.dart';
import "package:provider/provider.dart";
import 'package:appointment/providers/appointment_time.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppointmentTimeProvider())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "The Block",
        home: Home(),
      ),
    );
  }
}
