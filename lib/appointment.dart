import "package:appointment/helpers/colors.dart";
import 'package:flutter/material.dart';
import "package:appointment/helpers/text_styles.dart";
import 'footer.dart';
import "timeline.dart";
import "calendar.dart";

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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.arrow_back, color: AppColors.darkBlue),
              const SizedBox(width: 10),
              Text(
                "Book an Appointment",
                style: TextStyles.semibold(
                  fontSize: 18,
                  color: AppColors.darkBlue,
                ),
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
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Calendar(),
          Timeline(),
        ]),
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}
