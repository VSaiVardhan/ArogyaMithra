import 'package:flutter/material.dart';

class UpcomingSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Upcoming Appointments",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Container(
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
                    "Dr. Vardhan",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text("Neurosurgeon"),
                  trailing: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("images/doctor1.jpg"),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildInfoRow(Icons.calendar_today, "16/12/2023"),
                    _buildInfoRow(Icons.access_time, "10:30 AM"),
                    _buildStatusRow("Confirmed", Colors.green),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildActionButton("Cancel", Colors.red),
                    _buildActionButton("Reschedule", Colors.blue),
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
        width: 150,
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
