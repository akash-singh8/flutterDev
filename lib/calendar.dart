import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import "package:appointment/helpers/colors.dart";

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime today = DateTime.now();
  Map<int, String> monthNames = {
    1: 'January',
    2: 'February',
    3: 'March',
    4: 'April',
    5: 'May',
    6: 'June',
    7: 'July',
    8: 'August',
    9: 'September',
    10: 'October',
    11: 'November',
    12: 'December',
  };

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  int getDaysInMonth(int year, int month) {
    DateTime nextMonth = DateTime(year, month + 1, 1);
    DateTime lastDayOfMonth = nextMonth.subtract(const Duration(days: 1));

    return lastDayOfMonth.day;
  }

  @override
  Widget build(BuildContext context) {
    String? month = monthNames[today.month];
    int year = today.year;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$month $year",
            style: const TextStyle(
              fontSize: 18,
              color: AppColors.grey,
            ),
          ),
          const SizedBox(height: 14),
          TableCalendar(
            focusedDay: today,
            locale: "en_US",
            rowHeight: 48,
            daysOfWeekHeight: 40,
            headerVisible: false,
            daysOfWeekStyle: const DaysOfWeekStyle(
                weekdayStyle: TextStyle(color: AppColors.grey),
                weekendStyle: TextStyle(color: AppColors.grey)),
            selectedDayPredicate: (day) => isSameDay(day, today),
            calendarStyle: const CalendarStyle(
              selectedDecoration: BoxDecoration(
                color: AppColors.orange,
                shape: BoxShape.circle,
              ),
              todayDecoration: BoxDecoration(
                color: AppColors.lightOrange,
                shape: BoxShape.circle,
              ),
              defaultTextStyle: TextStyle(color: AppColors.grey),
            ),
            firstDay: DateTime.now(),
            lastDay: DateTime.utc(today.year, today.month,
                getDaysInMonth(today.year, today.month)),
            onDaySelected: _onDaySelected,
          ),
        ],
      ),
    );
  }
}
