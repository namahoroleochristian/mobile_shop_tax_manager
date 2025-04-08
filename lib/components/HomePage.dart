import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top Greeting Section
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hi, Welcome Back",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    Text("Good Morning",
                        style: TextStyle(color: Colors.white70)),
                  ],
                ),
                Icon(Icons.notifications, color: Colors.white, size: 28),
              ],
            ),
          ),

          // Stats Cards
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildStatCard("Total Purchased Goods", "200,000 Rwf"),
                    buildStatCard("Total Sales", "78,000 Rwf"),
                  ],
                ),
                LinearProgressIndicator(
                  value: 0.3, // 30%
                  backgroundColor: Colors.grey.shade300,
                  minHeight: 12,
                  color: Colors.blue,
                ),
                SizedBox(height: 5),
                Text("30% Of Your Sales, Looks Good."),
                SizedBox(height: 500),
              ],
            ),
          ),
        ],
      ),
    );

  }
   Widget buildStatCard(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        Text(value,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.teal)),
      ],
    );
  }
}
