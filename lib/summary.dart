import "package:appointment/helpers/colors.dart";
import "package:flutter/material.dart";

class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
      margin: const EdgeInsets.fromLTRB(18, 18, 18, 4),
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(12), // Add border radius
      ),
      child: const Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Haircut Only",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: AppColors.darkBlue,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "\$50.00",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: AppColors.darkBlue,
                      ),
                    ),
                    Text(
                      "1:15 PM - 2:15 PM",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: AppColors.grey,
                          letterSpacing: 0,
                          height: 1.9),
                    )
                  ],
                )
              ]),
          SizedBox(height: 9),
          Divider(
            color: AppColors.heavyShadow,
            thickness: 1,
          ),
          SizedBox(height: 9),
          Row(
            children: [
              Text("Staff:",
                  style: TextStyle(color: AppColors.darkBlue, fontSize: 15)),
              SizedBox(width: 10),
              Icon(Icons.person_2_rounded, color: AppColors.lightOrange),
              SizedBox(width: 4),
              Text("Akash Singh",
                  style: TextStyle(color: AppColors.darkBlue, fontSize: 15))
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
