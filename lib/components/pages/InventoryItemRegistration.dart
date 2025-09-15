import 'package:educat/components/UI/BottomNavbar.dart';
import 'package:educat/components/UI/ItemRegistration.dart';
import 'package:educat/components/UI/Navbar.dart';
import 'package:flutter/material.dart';

class Inventoryitemregistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 100),
        child: Navbar(
          title: "Inventory",
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            //app sales bar
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 112,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
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
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
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
                        backgroundColor: Colors.grey[400],
                        // valueColor: AlwaysStoppedAnimation<Color>(primaryGreen),
                      ),
                      SizedBox(height: 8),
                      Text("30% Of Your Sales, Looks Good."),
                    ],
                  ),
                )),

            SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                SizedBox(
                  width: MediaQuery.of(context).size.width/2.2,
                  height: 60,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                    child: Text(
                      "add to stock",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 24),
                    ),
                  ),
                ), SizedBox(
                  width: MediaQuery.of(context).size.width/2.2,
                  height: 60,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed((context), '/sellItem');

                    },
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ).copyWith(
                        side: WidgetStateProperty.all(BorderSide(
                            color: const Color.fromRGBO(0, 208, 158, 1),
                            width: 1.3))),
                    child: Text(
                      "sell",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 24),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
             Itemregistration(),

            SizedBox(
              height: 10,
            ),
            
          ],
        ),
      ),
      bottomNavigationBar: Bottomnavbar(),
    );
  }
}
