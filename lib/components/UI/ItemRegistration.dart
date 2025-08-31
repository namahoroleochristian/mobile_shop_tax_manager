import 'package:educat/components/models/UserModel.dart';
import 'package:educat/components/providers/SignUpProvider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class Itemregistration extends StatefulWidget {
  @override
  _itemregistrationState createState() => _itemregistrationState();
}

class _itemregistrationState extends State<Itemregistration> {
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
                        width: MediaQuery.of(context).size.width * 5 / 6,
                        child: TextFormField(
                          decoration:  InputDecoration(
                            filled: true,
                            
                            focusColor: const Color(0xFFF1FFF3),
                            fillColor: const Color(0xFFF1FFF3),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            prefixIcon: Icon(Icons.abc),
                            label: Text(
                              "Enter item Name",
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
                          onChanged: (val) => names = val,
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 4.7 / 6,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Quantity"),
                        )),
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
                        width: MediaQuery.of(context).size.width * 4.7 / 6,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Buying price"),
                        )),
                    SizedBox(
                      height: 4,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 5 / 6,
                      child: TextFormField(
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          prefixIcon: Icon(Icons.badge),
                          label: Text(
                            "Enter product buying price ",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 31, 34, 33)),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: const Color.fromRGBO(0, 208, 158, 1),
                                  width: 0.1)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: const Color.fromRGBO(0, 208, 158, 1))),
                        ),
                        onChanged: (val) => buyingprice = val,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 4.7 / 6,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("unit"),
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 5 / 6,
                        child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              label: Text("select a unit"),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          const Color.fromRGBO(0, 208, 158, 1),
                                      width: 0.1)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          const Color.fromRGBO(0, 208, 158, 1),
                                      width: 1)),
                            ),
                            items: units,
                            value: unit,
                            onChanged: (val) => unit = val!)),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 4.7 / 6,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("selling price"),
                        )),
                    SizedBox(
                      height: 4,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 5 / 6,
                        child: TextFormField(
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            prefixIcon: Icon(Icons.email),
                            label: Text(
                              "Enter your selling price ",
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
                          onChanged: (val) => sellingprice = val,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 4.7 / 6,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("category"),
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 5 / 6,
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            prefixIcon: Icon(Icons.key),
                            label: Text(
                              "Enter your category",
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
                          onChanged: (val) => category = val,
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 3.5 / 6,
                      child: FloatingActionButton(
                        backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
                        onPressed: () {},
                        
                        child: Text(
                          "Create Item",
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
                    // TextButton(
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, '/login');
                    //     },
                    //     child: Text(
                    //       "Already have an Account Login",
                    //       style: TextStyle(color: Colors.black),
                    //     ))
                  ],
                )),
          ),
        );
  }
}

List<DropdownMenuItem<String>> units = [
  DropdownMenuItem(
    value: 'single',
    child: Text("single item"),
  ),
  DropdownMenuItem(value: 'pack', child: Text("Pack or dozen ")),
];
