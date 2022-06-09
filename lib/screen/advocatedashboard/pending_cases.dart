import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:nyayaag_client/controllers/advocate.dart'
    as advocate_controller;

class PendingCases extends StatefulWidget {
  const PendingCases({Key? key}) : super(key: key);

  @override
  _PendingCases createState() => _PendingCases();
}

class _PendingCases extends State<PendingCases> {
  @override
  Widget build(BuildContext context) {
    advocate_controller.Advocate.caseReminder().then((response) {
      print(response);
    });

    CalendarFormat _calendarFormat = CalendarFormat.month;
    DateTime _focusedDay = DateTime.now();
    DateTime? _selectedDay;

    return Center(
      child: TableCalendar(
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: _focusedDay,
        calendarFormat: _calendarFormat,
        selectedDayPredicate: (day) {
          return isSameDay(_selectedDay, day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay; // update `_focusedDay` here as well
          });
        },
        onFormatChanged: (format) {
          if (_calendarFormat != format) {
            // Call `setState()` when updating calendar format
            setState(() {
              _calendarFormat = format;
            });
          }
        },
        onPageChanged: (focusedDay) {
          // No need to call `setState()` here
          _focusedDay = focusedDay;
        },
      ),
    );
  }
}
