import 'package:flutter/material.dart';

class Salesstatusbar extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return
    Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width*0.9,
        height: MediaQuery.of(context).size.height*0.2,

      child: 
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.amber[200]
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
                ), )
      
      ) 
    );
  }

}