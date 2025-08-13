import 'package:flutter/material.dart';
import '../UI/BottomNavbar.dart';
import '../UI/Navbar.dart';

void main() => runApp(Homepage());

class Homepage extends StatelessWidget {
  final String name;
  const Homepage({this.name = "Homepage"});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: ,
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 100),
          child: Navbar(title: name,),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Total Purchased Goods",
                                style: TextStyle(color: Colors.black54)),
                            Text("200,000 Rwf",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Total Sales",
                                style: TextStyle(color: Colors.black54)),
                            Text("78,000 Rwf",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold)),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    LinearProgressIndicator(
                      value: 0.3,
                      backgroundColor: Colors.grey[200],
                      // valueColor: AlwaysStoppedAnimation<Color>(primaryGreen),
                    ),
                    SizedBox(height: 8),
                    Text("30% Of Your Sales, Looks Good."),
                  ],
                ),
              ),
              SizedBox(height: 30),
              ToggleButtons(
                borderRadius: BorderRadius.circular(20),
                selectedColor: Colors.white,
                // fillColor: primaryGreen,
                isSelected: [false, false, true],
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text("Daily")),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text("Weekly")),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text("Monthly")),
                ],
                onPressed: (int index) {},
              ),
              SizedBox(height: 20),
              _buildInfoCard("Purchases", "18:27 - April 30", "Monthly",
                  "140,000", Icons.shopping_cart),
              SizedBox(height: 10),
              _buildInfoCard("Taxes", "17:00 - April 24", "Pantry", "20,000",
                  Icons.receipt),
              SizedBox(height: 10),
              _buildInfoCard(
                  "Sales", "8:30 - April 15", "Rent", "30,000", Icons.sell),
            ],
          ),
        ),
        bottomNavigationBar: Bottomnavbar());
  }
}

Widget _buildInfoCard(
    String title, String time, String label, String amount, IconData icon) {
  return Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Color(0xFF00D09E).withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Color(0xFF00D09E)),
        ),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(time, style: TextStyle(color: Colors.blue)),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(label, style: TextStyle(color: Colors.grey)),
            Text(amount, style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        )
      ],
    ),
  );
}
