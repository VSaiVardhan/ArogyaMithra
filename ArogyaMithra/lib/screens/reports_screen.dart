import 'package:flutter/material.dart';

// Sample data class to simulate reports data
class ReportsData {
  final String title;
  final String description;
  final DateTime date;

  ReportsData({
    required this.title,
    required this.description,
    required this.date,
  });
}

class ReportsScreen extends StatelessWidget {
  bool activeStatus = true;

  // Sample list of reports
  final List<ReportsData> reports = [
    ReportsData(
      title: "Blood Test",
      description: "Comprehensive blood analysis",
      date: DateTime(2023, 3, 15),
    ),
    ReportsData(
      title: "X-Ray",
      description: "Chest X-Ray",
      date: DateTime(2023, 3, 10),
    ),
    ReportsData(
      title: "MRI Scan",
      description: "Brain MRI Scan",
      date: DateTime(2023, 3, 5),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Reports",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 300,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: Color(0xFF113953),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          // Display reports
          for (var report in reports)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Card(
                elevation: 5,
                child: ListTile(
                  title: Text(report.title),
                  subtitle: Text(report.description),
                  trailing: Text(
                    "${report.date.day}/${report.date.month}/${report.date.year}",
                  ),
                  onTap: () {
                    // Handle tapping on a report (navigate to details, etc.)
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }
}
