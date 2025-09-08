import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Stateless widget — App setup
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Planner',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DailyPlannerHome(),
    );
  }
}

// Stateful widget — For interactive UI
class DailyPlannerHome extends StatefulWidget {
  @override
  _DailyPlannerHomeState createState() => _DailyPlannerHomeState();
}

class _DailyPlannerHomeState extends State<DailyPlannerHome> {
  List<String> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.add, color: Colors.white), // Plus icon
            SizedBox(width: 8),
            Text("Daily Planner"),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // A heading
            Text(
              "Today's Plan:",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),

            // A row of buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      tasks = [
                        "Morning Exercise at 7 AM",
                        "Healthy Breakfast",
                        "Read 20 pages of a book",
                        "Meditation for 10 min",
                        "Plan daily goals",
                      ];
                    });
                  },
                  child: Text("Morning"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      tasks = [
                        "Work on project report",
                        "Team meeting at 11 AM",
                        "Lunch break",
                        "Reply to emails",
                        "Client call at 4 PM",
                      ];
                    });
                  },
                  child: Text("Afternoon"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      tasks = [
                        "Evening walk",
                        "Dinner with family",
                        "Watch a movie",
                        "Write journal",
                        "Plan for tomorrow",
                      ];
                    });
                  },
                  child: Text("Evening"),
                ),
              ],
            ),

            SizedBox(height: 30),

            // Show tasks in a column
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.blueAccent),
                    ),
                    child: Text(tasks[index], style: TextStyle(fontSize: 18)),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
