import 'package:flutter/material.dart';
import 'footer.dart';
import "summary.dart";

class Appointment extends StatelessWidget {
  const Appointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.arrow_back),
              SizedBox(width: 10),
              Text(
                "Book an Appointment",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            height: 1.0,
            color: Colors.grey[200],
          ),
        ),
      ),
      body: const Column(children: [
        Summary(),
        AddServiceButton(),
      ]),
      bottomNavigationBar: const Footer(),
    );
  }
}
