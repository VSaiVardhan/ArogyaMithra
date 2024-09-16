import 'package:flutter/material.dart';

class CompletedSchedule extends StatelessWidget {
  final List<Map<String, String>> completedAppointments = [
    {
      'doctorName': 'Dr. Chiranjeevi',
      'specialty': 'Therapist',
      'date': '02/12/2023',
      'time': '10:30 AM',
      'imagePath': 'images/doctor2.jpg',
    },
    {
      'doctorName': 'Dr. Nagarjuna',
      'specialty': 'Cardiologist',
      'date': '12/10/2023',
      'time': '02:00 PM',
      'imagePath': 'images/doctor3.jpg',
    },
    {
      'doctorName': 'Dr. Balakrishna',
      'specialty': 'Dermatologist',
      'date': '19/06/2023',
      'time': '04:45 PM',
      'imagePath': 'images/doctor4.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Completed Appointments",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          for (var appointment in completedAppointments)
            Container(
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 8,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text(
                      appointment['doctorName']!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Text(appointment['specialty']!),
                    trailing: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(appointment['imagePath']!),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildInfoRow(Icons.calendar_today, appointment['date']!),
                      _buildInfoRow(Icons.access_time, appointment['time']!),
                      _buildStatusRow("Completed", Colors.blue),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildActionButton("View Details", Colors.green),
                    ],
                  ),
                ],
              ),
            ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.black54,
        ),
        SizedBox(width: 5),
        Text(
          text,
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
      ],
    );
  }

  Widget _buildStatusRow(String text, Color color) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 5),
        Text(
          text,
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
      ],
    );
  }

  Widget _buildActionButton(String text, Color color) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 200,
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
