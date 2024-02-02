import "package:flutter/material.dart";
import "package:appointment/helpers/colors.dart";

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: const SizedBox(
        height: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '\$50.00',
                        style: TextStyle(
                            color: AppColors.darkBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            height: 1),
                      ),
                      Text(
                        "1h",
                        style: TextStyle(
                            fontSize: 10, height: 2.2, color: AppColors.grey),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  SizedBox(width: 24),
                  Button(),
                ],
              ),
            ),
            SizedBox(height: 18),
            BottomText()
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 44.0, // Set the height
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), // Set the border radius
        ),
        child: ElevatedButton(
          onPressed: () {
            // Your button action here
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.orange, // Background color
            foregroundColor: AppColors.white, // Text color
            textStyle:
                const TextStyle(fontSize: 15.4, fontWeight: FontWeight.w600),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Button border radius
            ),
          ),
          child: const Text('Book'),
        ),
      ),
    );
  }
}

class BottomText extends StatelessWidget {
  const BottomText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
        style: TextStyle(
          // Default style for the whole text
          fontSize: 11,
          color: AppColors.darkBlue, // Default text color
        ),
        children: <TextSpan>[
          TextSpan(
            text:
                'Your personal data will be processed by the partner with whom you are booking an appointment. You can find more information ',
          ),
          TextSpan(
            text: 'here.',
            style: TextStyle(
                color: AppColors.skyblue,
                fontWeight: FontWeight.w500), // Style for 'here'
          ),
        ],
      ),
    );
  }
}
