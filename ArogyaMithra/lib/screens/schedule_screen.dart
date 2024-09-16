import 'package:flutter/material.dart';
import 'package:healthcare/widgets/upcoming_schedule.dart';
import 'package:healthcare/widgets/completed_schedule.dart';

class ScheduleScreen extends StatefulWidget {
  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int _buttonIndex = 0;

  final _scheduleWidgets = [
    UpcomingSchedule(),
    CompletedSchedule(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Schedule",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Color(0xFFF4F6FA),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildButton(0, "Upcoming"),
                  _buildButton(1, "Completed"),
                  _buildButton(2, "Pending"),
                ],
              ),
            ),
            SizedBox(height: 30),
            // Widgets According to buttons
            _scheduleWidgets[_buttonIndex],
          ],
        ),
      ),
    );
  }

  Widget _buildButton(int index, String text) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            _buttonIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: _buttonIndex == index
                ? Color(0xFFFF8F00)
                : const Color.fromARGB(0, 65, 63, 63),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              // BoxShadow(
              //   color: Colors.black12,
              //   blurRadius: 4,
              //   offset: Offset(0, 2),
              // ),
            ],
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: _buttonIndex == index ? Colors.white : Colors.black38,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
