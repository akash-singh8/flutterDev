import 'package:flutter/material.dart';
import 'appointment.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  void navigateAppointment(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return const Appointment();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "The Block",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 237, 237, 237),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(2.0),
          child: Container(
            height: 2.0,
            color: Colors.grey[300],
          ),
        ),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                navigateAppointment(context);
              },
              child: const Text("Book an Appointment"))),
    );
  }
}
