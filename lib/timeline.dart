import 'package:flutter/material.dart';
import "package:appointment/helpers/colors.dart";

class Timeline extends StatefulWidget {
  const Timeline({super.key});

  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  int _isSelected = 0; // Moved the state here

  void _updateSelection(int index) {
    setState(() {
      _isSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                  isSelected: _isSelected == 0,
                  onSelect: _updateSelection,
                ),
                const SizedBox(width: 15),
                Time(
                  index: 1,
                  timeText: "1:30 PM",
                  isSelected: _isSelected == 1,
                  onSelect: _updateSelection,
                ),
                const SizedBox(width: 15),
                Time(
                  index: 2,
                  timeText: "1:45 PM",
                  isSelected: _isSelected == 2,
                  onSelect: _updateSelection,
                ),
                const SizedBox(width: 15),
                Time(
                  index: 3,
                  timeText: "2:00 PM",
                  isSelected: _isSelected == 3,
                  onSelect: _updateSelection,
                ),
                const SizedBox(width: 15),
                Time(
                  index: 4,
                  timeText: "2:15 PM",
                  isSelected: _isSelected == 4,
                  onSelect: _updateSelection,
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
    );
  }
}

class Time extends StatelessWidget {
  final String timeText;
  final int index;
  final bool isSelected;
  final Function(int) onSelect;

  const Time({
    Key? key,
    required this.timeText,
    required this.index,
    required this.isSelected,
    required this.onSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onSelect(index),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.orange : Colors.transparent,
          border: Border.all(color: AppColors.heavyShadow),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Text(
          timeText,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
            color: isSelected ? Colors.white : AppColors.grey,
          ),
        ),
      ),
    );
  }
}
