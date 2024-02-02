import "package:appointment/helpers/colors.dart";
import "package:flutter/material.dart";
import "package:appointment/helpers/text_styles.dart";
import "package:appointment/providers/appointment_time.dart";
import "package:provider/provider.dart";

class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
      margin: const EdgeInsets.fromLTRB(18, 18, 18, 4),
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Haircut Only",
                  style: TextStyles.medium(
                    fontSize: 17,
                    color: AppColors.darkBlue,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "\$50.00",
                      style: TextStyles.medium(
                        fontSize: 17,
                        color: AppColors.darkBlue,
                      ),
                    ),
                    Consumer<AppointmentTimeProvider>(
                      builder: (context, appointmentTimeProvider, child) {
                        String timing;
                        switch (appointmentTimeProvider.current) {
                          case 0:
                            timing = "1:15 PM - 2:15 PM";
                            break;
                          case 1:
                            timing = "1:30 PM - 2:30 PM";
                            break;
                          case 2:
                            timing = "1:45 PM - 2:45 PM";
                            break;
                          case 3:
                            timing = "2:00 PM - 3:00 PM";
                            break;
                          case 4:
                            timing = "2:15 PM - 3:15 PM";
                            break;
                          default:
                            timing = "1:15 PM - 2:15 PM";
                        }

                        return Text(
                          timing,
                          style: TextStyles.regular(
                            fontSize: 12,
                            color: AppColors.grey,
                          ),
                        );
                      },
                    )
                  ],
                )
              ]),
          const SizedBox(height: 9),
          const Divider(
            color: AppColors.heavyShadow,
            thickness: 1,
          ),
          const SizedBox(height: 9),
          Row(
            children: [
              Text("Staff:",
                  style: TextStyles.regular(
                    color: AppColors.darkGrey,
                    fontSize: 15,
                  )),
              const SizedBox(width: 10),
              const Icon(Icons.person_2_rounded, color: AppColors.lightOrange),
              const SizedBox(width: 4),
              Text("Akash Singh",
                  style: TextStyles.regular(
                    color: AppColors.darkBlue,
                    fontSize: 15,
                  ))
            ],
          )
        ],
      ),
    );
  }
}

class AddServiceButton extends StatelessWidget {
  const AddServiceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: AppColors.orange,
        ),
        onPressed: () {
          // Your button tap action here
        },
        child: const Row(
          children: [
            Icon(Icons.add),
            SizedBox(width: 4),
            Text('Add another service'),
          ],
        ),
      ),
    );
  }
}
