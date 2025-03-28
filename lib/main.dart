// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// // import 'package:flutter_svg/flutter_svg.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//             backgroundColor: const Color.fromARGB(255, 1, 22, 53),
//             appBar: PreferredSize(
//               preferredSize: Size.fromHeight(60.0),
//               child: ClipRRect(
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(0.0),
//                     topRight: Radius.circular(0.0),
//                   ),
//                   child: AppBar(
//                     backgroundColor: const Color.fromARGB(255, 1, 22, 53),
//                     title: Row(
//                       children: [
//                         Icon(
//                           Icons.touch_app,
//                           color: Colors.white,
//                           size: 40,
//                         ),
//                         Text("intoki",
//                             style: GoogleFonts.baiJamjuree(
//                               fontSize: 24,
//                               color: Colors.white,
//                             ))
//                       ],
//                     ),
//                     actions: <Widget>[
//                       IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.settings,
//                             color: Colors.white,
//                           ))
//                     ],
//                   )),
//             ),
//             body: Stack(
//               children: [
//                 SingleChildScrollView(
//                   // padding: EdgeInsets.all(12),

//                   child: Column(
//                     children: [
//                       Text(
//                         "Inventory",
//                         style: GoogleFonts.baiJamjuree(
//                           fontSize: 24,
//                           color: Colors.white,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                       ClipRect(
//                         child: BackdropFilter(
//                           filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
//                           child: Container(
//                             height: MediaQuery.of(context).size.height,
//                             decoration: BoxDecoration(
//                                 color: const Color.fromARGB(255, 255, 255, 255),
//                                 borderRadius: BorderRadius.only(
//                                     topLeft: Radius.circular(40.0),
//                                     bottomLeft: Radius.circular(40.0),
//                                     topRight: Radius.circular(40.0),
//                                     bottomRight: Radius.circular(40.0))),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 0,
//                   left: 0,
//                   right: 0,
//                   child: ClipRRect(
                    
//                     borderRadius: BorderRadius.all(Radius.circular(40.0)),
//                     child: BottomAppBar(
//                       color: const Color.fromARGB(255, 1, 22, 53),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           IconButton(
//                               onPressed: () {},
//                               icon: Icon(
//                                 Icons.home,
//                                 size: 40,
//                                 color: Colors.white,
//                               )),
//                           IconButton(
//                               onPressed: () {},
//                               icon: Icon(
//                                 Icons.inventory,
//                                 size: 35,
//                                 color: Colors.white,
//                               )),
//                           IconButton(
//                             onPressed: () {},
//                             icon: Image.asset(
//                                 "D:/DEV/Projects/Flt/educate/lib/assets/rra1.png"),
//                             iconSize: 40,
//                           ),
//                           IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.stacked_bar_chart,
//                               size: 40,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             )));
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
      backgroundColor: Colors.teal.shade400,
      body: SingleChildScrollView(
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
                    margin: EdgeInsets.symmetric(horizontal: 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TabBar(
                      isScrollable: true,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      indicator: BoxDecoration(
                        
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      tabs: [

                        Container(child: Tab(text: "Daily"), width: 100,),
                        Container(child: Tab(text: "weekly"), width: 100,),
                        Container(child: Tab(text: "monthly"), width: 100,),
                        
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10,width: 200,),

            // Transactions List
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  buildTransactionTile(Icons.shopping_cart, "Purchases", "140,000", "Monthly"),
                  buildTransactionTile(Icons.receipt, "Taxes", "20,000", "Pantry"),
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
              IconButton(icon: Icon(Icons.home, color: Colors.teal), onPressed: () {}),
              IconButton(icon: Icon(Icons.pie_chart, color: Colors.grey), onPressed: () {}),
              IconButton(icon: Icon(Icons.swap_horiz, color: Colors.grey), onPressed: () {}),
              IconButton(icon: Icon(Icons.settings, color: Colors.grey), onPressed: () {}),
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
        Text(title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        Text(value, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.teal)),
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
          Text(title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
          Text(value, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.teal)),
        ],
      ),
    );
  }

  Widget buildTransactionTile(IconData icon, String title, String amount, String category) {
    return ListTile(
      leading: Icon(icon, size: 30, color: Colors.teal),
      title: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      subtitle: Text(category, style: TextStyle(color: Colors.grey)),
      trailing: Text(amount, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.teal)),
    );
  }
}
