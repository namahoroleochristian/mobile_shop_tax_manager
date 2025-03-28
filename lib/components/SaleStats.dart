// import 'package:flutter/material.dart';

// class Salestats extends StatefulWidget {
//   const Salestats({super.key});
//   @override
//   _SalesstatsState createState() => _SalesstatsState();
// }

// class _SalesstatsState extends State<Salestats> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(

//       decoration: BoxDecoration(

//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade300,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Greeting Section
            Padding(
              padding: const EdgeInsets.all(20.0),
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
                  SizedBox(height: 10),
                  LinearProgressIndicator(
                    value: 0.3, // 30%
                    backgroundColor: Colors.grey.shade300,
                    color: Colors.blue,
                  ),
                  SizedBox(height: 5),
                  Text("30% Of Your Sales, Looks Good."),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Revenue & Expenses Cards
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildInfoCard(Icons.shopping_cart, "Sales", "45,000 Rwf"),
                  buildInfoCard(Icons.money, "Expense Last Week", "20,000 Rwf"),
                ],
              ),
            ),

            SizedBox(height: 20),

            // TabBar (Daily, Weekly, Monthly)
            DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TabBar(
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      indicator: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      tabs: [
                        Tab(text: "Daily"),
                        Tab(text: "Weekly"),
                        Tab(text: "Monthly"),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            // Transactions List
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  buildTransactionTile(
                      Icons.shopping_cart, "Purchases", "140,000", "Monthly"),
                  buildTransactionTile(
                      Icons.receipt, "Taxes", "20,000", "Pantry"),
                  buildTransactionTile(Icons.money, "Sales", "30,000", "Rent"),
                ],
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomAppBar(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  icon: Icon(Icons.home, color: Colors.teal), onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.pie_chart, color: Colors.grey),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.swap_horiz, color: Colors.grey),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.settings, color: Colors.grey),
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }

  // Helper Widgets
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

  Widget buildInfoCard(IconData icon, String title, String value) {
    return Container(
      width: 150,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Icon(icon, size: 40, color: Colors.teal),
          SizedBox(height: 10),
          Text(title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
          Text(value,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal)),
        ],
      ),
    );
  }

  Widget buildTransactionTile(
      IconData icon, String title, String amount, String category) {
    return ListTile(
      leading: Icon(icon, size: 30, color: Colors.teal),
      title: Text(title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      subtitle: Text(category, style: TextStyle(color: Colors.grey)),
      trailing: Text(amount,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.teal)),
    );
  }
}
