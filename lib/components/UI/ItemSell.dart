import 'package:educat/components/models/UserModel.dart';
import 'package:educat/components/providers/SignUpProvider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ItemSell extends StatefulWidget {
  @override
  _ItemSellState createState() => _ItemSellState();
}

class _ItemSellState extends State<ItemSell> {
  final _formKey = GlobalKey<FormState>();
  String barcode = '';
  String category = '', names = '', quantity = '', unit = 'single', buyingprice = '', sellingprice = '';
  
  @override
  build(BuildContext context) {
    // final provider = Provider.of<SignupProvider>(context);

    return SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                 Radius.circular(10),
              ),
              color: const Color(0xFFE4FDEE),
            ),
            // height: 700,
            width: MediaQuery.of(context).size.width,
            child: Form(
              
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 4.7 / 6,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Barcode"),
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 5 / 6,
                        child: TextFormField(
                          
                          decoration: InputDecoration(
                            filled: true,
                            
                            focusColor: const Color(0xFFF1FFF3),
                            fillColor: const Color(0xFFF1FFF3),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            prefixIcon: Icon(Icons.barcode_reader),
                            label: Text(
                              "Enter item Barcode",
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 31, 34, 33)),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color.fromRGBO(0, 208, 158, 1),
                                    width: 0.3)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        const Color.fromRGBO(0, 208, 158, 1))),
                          ),
                          onChanged: (val) => barcode = val,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 4.7 / 6,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Name"),
                        )),
                    SizedBox(
                      height: 4,
                    ),
                    SizedBox(
                      height: 4,
                    ),

                    SizedBox(
                      height: 15,
                    ),

                    SizedBox(
                      width: MediaQuery.of(context).size.width * 5 / 6,
                      child: SizedBox(
                          height: 100,
                          child: TextFormField(
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            prefixIcon: Icon(Icons.phone),
                            label: Text(
                              "Enter your product Quantity",
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 31, 34, 33)),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color.fromRGBO(0, 208, 158, 1),
                                    width: 0.1)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        const Color.fromRGBO(0, 208, 158, 1))),
                          ),
                          onChanged: (val) => names = val,
                        ) ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    SizedBox(
                      height: 4,
                    ),



                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 3.5 / 6,
                      child: FloatingActionButton(
                        backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
                        onPressed: () {},
                        
                        child: Text(
                          "Sell",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),

                  ],
                )),
          ),
        );
  }
}

