import 'package:flutter/material.dart';
import "package:appointment/helpers/colors.dart";
import "package:appointment/helpers/text_styles.dart";
import "package:appointment/providers/appointment_time.dart";
import "package:provider/provider.dart";

class Timeline extends StatefulWidget {
  const Timeline({super.key});

  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppointmentTimeProvider>(
      builder: (context, appointmentTimeProvider, child) => Column(
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
                    isSelected: appointmentTimeProvider.current == 0,
                  ),
                  const SizedBox(width: 15),
                  Time(
                    index: 1,
                    timeText: "1:30 PM",
                    isSelected: appointmentTimeProvider.current == 1,
                  ),
                  const SizedBox(width: 15),
                  Time(
                    index: 2,
                    timeText: "1:45 PM",
                    isSelected: appointmentTimeProvider.current == 2,
                  ),
                  const SizedBox(width: 15),
                  Time(
                    index: 3,
                    timeText: "2:00 PM",
                    isSelected: appointmentTimeProvider.current == 3,
                  ),
                  const SizedBox(width: 15),
                  Time(
                    index: 4,
                    timeText: "2:15 PM",
                    isSelected: appointmentTimeProvider.current == 4,
                  ),
                  const SizedBox(width: 11),
                ],
              ),
            ),
          ),
          const Divider(
            color: AppColors.lightShadow,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}

class Time extends StatelessWidget {
  final String timeText;
  final int index;
  final bool isSelected;

  const Time({
    Key? key,
    required this.timeText,
    required this.index,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppointmentTimeProvider>(
      builder: (context, appointmentTimeProvider, child) => GestureDetector(
        onTap: () => {
          appointmentTimeProvider.updateTime(index),
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
      ),
    );
  }
}
