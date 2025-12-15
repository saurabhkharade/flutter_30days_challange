import 'package:flutter/material.dart';

import '../day4/painterexample.dart';

class DayListScreen extends StatelessWidget {
  final List<String> days = ["Day 1", "Day 2", "Day 3","Day4","Day 5", "Day 6" ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Study Days")),
      body: ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: days.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                if (index == 0) {
              //    Navigator.push(                    context, MaterialPageRoute(builder: (_) => UserFormScreen()),);
                }

              },
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      days[index],
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 20),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}