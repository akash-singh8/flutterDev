import "package:flutter/material.dart";
import "package:appointment/helpers/colors.dart";
import "package:appointment/helpers/text_styles.dart";

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        height: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '\$50.00',
                        style: TextStyles.bold(
                          color: AppColors.darkBlue,
                          fontSize: 19,
                        ),
                      ),
                      Text(
                        "1h",
                        style: TextStyles.regular(
                            fontSize: 10, color: AppColors.grey),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  const SizedBox(width: 24),
                  const Button(),
                ],
              ),
            ),
            const SizedBox(height: 18),
            const BottomText()
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
        height: 44.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: ElevatedButton(
          onPressed: () {
            // Your button action here
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.orange, //
            foregroundColor: AppColors.white, //
            textStyle: TextStyles.semibold(fontSize: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
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
      text: TextSpan(
        style: TextStyles.regular(
          fontSize: 11,
          color: AppColors.darkBlue,
        ),
        children: <TextSpan>[
          const TextSpan(
            text:
                'Your personal data will be processed by the partner with whom you are booking an appointment. You can find more information ',
          ),
          TextSpan(
            text: 'here.',
            style: TextStyles.medium(
              fontSize: 11,
              color: AppColors.skyblue,
            ),
          ),
        ],
      ),
    );
  }
}
