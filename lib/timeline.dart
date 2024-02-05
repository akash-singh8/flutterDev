import 'package:flutter/material.dart';
import "package:appointment/helpers/colors.dart";
import "package:appointment/helpers/text_styles.dart";

class Timeline extends StatefulWidget {
  const Timeline({super.key});

  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  int currentTimeIndex = 0;

  @override
  Widget build(BuildContext context) {
    void updateTime(int timeIndex) {
      setState(() {
        currentTimeIndex = timeIndex;
      });
    }

    return Column(
      children: [
        const Divider(
          color: AppColors.lightShadow,
          thickness: 1,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(width: 11),
                Time(
                    index: 0,
                    timeText: "1:15 PM",
                    isSelected: currentTimeIndex == 0,
                    updateTime: updateTime),
                const SizedBox(width: 15),
                Time(
                    index: 1,
                    timeText: "1:30 PM",
                    isSelected: currentTimeIndex == 1,
                    updateTime: updateTime),
                const SizedBox(width: 15),
                Time(
                    index: 2,
                    timeText: "1:45 PM",
                    isSelected: currentTimeIndex == 2,
                    updateTime: updateTime),
                const SizedBox(width: 15),
                Time(
                    index: 3,
                    timeText: "2:00 PM",
                    isSelected: currentTimeIndex == 3,
                    updateTime: updateTime),
                const SizedBox(width: 15),
                Time(
                    index: 4,
                    timeText: "2:15 PM",
                    isSelected: currentTimeIndex == 4,
                    updateTime: updateTime),
                const SizedBox(width: 11),
              ],
            ),
          ),
        ),
        const Divider(
          color: AppColors.lightShadow,
          thickness: 1,
        ),
        Summary(timeIndex: currentTimeIndex),
        const AddServiceButton()
      ],
    );
  }
}

class Time extends StatelessWidget {
  final String timeText;
  final int index;
  final bool isSelected;
  final Function updateTime;

  const Time(
      {Key? key,
      required this.timeText,
      required this.index,
      required this.isSelected,
      required this.updateTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        updateTime(index),
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.orange : Colors.transparent,
          border: Border.all(color: AppColors.heavyShadow),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Text(
          timeText,
          style: TextStyles.medium(
            fontSize: 15,
            color: isSelected ? Colors.white : AppColors.grey,
          ),
        ),
      ),
    );
  }
}

class Summary extends StatelessWidget {
  final int timeIndex;

  const Summary({
    Key? key,
    required this.timeIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String timing;
    switch (timeIndex) {
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
                    Text(
                      timing,
                      style: TextStyles.regular(
                        fontSize: 12,
                        color: AppColors.grey,
                      ),
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
