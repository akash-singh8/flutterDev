import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import "package:appointment/helpers/colors.dart";
import "package:appointment/helpers/text_styles.dart";

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  bool twoWeeksView = true;
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

    String buttonText = twoWeeksView ? "Show full month" : "Show 2 weeks";
    Icon buttonIcon = twoWeeksView
        ? const Icon(Icons.arrow_drop_down)
        : const Icon(Icons.arrow_drop_up);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$month $year",
            style: TextStyles.medium(
              fontSize: 18,
              color: AppColors.grey,
            ),
          ),
          const SizedBox(height: 14),
          TableCalendar(
            calendarFormat:
                (twoWeeksView) ? CalendarFormat.twoWeeks : CalendarFormat.month,
            focusedDay: today,
            locale: "en_US",
            rowHeight: 48,
            daysOfWeekHeight: 40,
            headerVisible: false,
            daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: TextStyles.regular(color: AppColors.grey),
                weekendStyle: TextStyles.regular(color: AppColors.grey)),
            selectedDayPredicate: (day) => isSameDay(day, today),
            calendarStyle: CalendarStyle(
              selectedDecoration: BoxDecoration(
                  color: AppColors.orange,
                  borderRadius: BorderRadius.circular(8)),
              todayDecoration: const BoxDecoration(color: AppColors.white),
              defaultTextStyle: TextStyles.regular(color: AppColors.grey),
              todayTextStyle: TextStyles.bold(
                color: AppColors.darkBlue,
              ),
              selectedTextStyle: TextStyles.bold(
                color: AppColors.white,
              ),
            ),
            firstDay: DateTime.now(),
            lastDay: DateTime.utc(today.year, today.month,
                getDaysInMonth(today.year, today.month)),
            onDaySelected: _onDaySelected,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(4, 20, 4, 0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  twoWeeksView = !twoWeeksView;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 0,
                side: const BorderSide(color: AppColors.greyOutline, width: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      buttonText,
                      style: TextStyles.medium(
                          color: AppColors.darkBlue, fontSize: 14),
                    ),
                    const SizedBox(width: 4),
                    buttonIcon
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
