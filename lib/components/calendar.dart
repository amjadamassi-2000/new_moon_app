import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class MyHomePageCleander extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePageCleander> {
  @override
  Widget build(BuildContext context) {
    return SfCalendar(
      cellBorderColor: Colors.amber,
      view: CalendarView.month,
      monthViewSettings: MonthViewSettings(
          appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
      //initialDisplayDate: DateTime(2021, 03, 01, 08, 30),
      //initialSelectedDate: DateTime(2021, 03, 01, 08, 30),
      dataSource: MeetingDataSource(getAppointments()),
    );
  }
}

List<Appointment> getAppointments() {
  List<Appointment> meetings = <Appointment>[];
  final DateTime today = DateTime.now();
  final DateTime startTime =
      DateTime(today.year, today.month, today.day, 9, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 2));

  meetings.add(Appointment(
      color: Colors.green,
      startTime: DateTime(2022, 7, 23),
      subject: 'الجوزاء.',
      isAllDay: false,
      notes: 'h'));
  meetings.add(Appointment(
      color: Colors.red,
      startTime: DateTime(2022, 7, 7),
      subject: 'امجد',
      isAllDay: false,
      notes: 'h'));

  meetings.add(Appointment(
      color: Colors.blue,
      startTime: DateTime(2022, 7, 6),
      subject: 'مهندمرتجىع',
      isAllDay: false,
      notes: 'h'));
  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}
