import "package:flutter/material.dart";

class Timeline extends StatelessWidget {
  const Timeline({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: Colors.black12,
          thickness: 1,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: const SingleChildScrollView(
            scrollDirection:
                Axis.horizontal, // Set scrolling direction to horizontal
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 11),
                Time(timeText: "1:15 PM"),
                SizedBox(width: 15),
                Time(timeText: "1:30 PM"),
                SizedBox(width: 15),
                Time(timeText: "1:45 PM"),
                SizedBox(width: 15),
                Time(timeText: "2:00 PM"),
                SizedBox(width: 15),
                Time(timeText: "2:15 PM"),
                SizedBox(width: 11),
              ],
            ),
          ),
        ),
        const Divider(
          color: Colors.black12,
          thickness: 1,
        ),
      ],
    );
  }
}

class Time extends StatefulWidget {
  final String timeText;

  const Time({Key? key, required this.timeText}) : super(key: key);

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        decoration: BoxDecoration(
          color: _isSelected ? const Color(0xFF218CAC) : Colors.transparent,
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Text(
          widget.timeText,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
            color: _isSelected ? Colors.white : Colors.black45,
          ),
        ),
      ),
    );
  }
}
