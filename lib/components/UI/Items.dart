import 'package:flutter/material.dart';

class Item {
  final String name;
  final String details;
  final int price;

  Item({required this.name, required this.details, required this.price});
}

class Items extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Shoes (14)', details: '18:27 - April 30', price: 25000),
    Item(name: 'Shoes (14)', details: '18:27 - April 30', price: 25000),
    Item(name: 'Shoes (14)', details: '18:27 - April 30', price: 25000),
    Item(name: 'Shoes (14)', details: '18:27 - April 30', price: 25000),
    Item(name: 'Shoes (14)', details: '18:27 - April 30', price: 25000),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            item.details,
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey.shade600),
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(),
                    Expanded(
                      child: Text(
                        item.price.toString(),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    VerticalDivider(),
                    Expanded(
                      child: Icon(Icons.insert_drive_file_outlined),
                    ),
                  ],
                ),
              ),
              if (index < items.length - 1) // Add divider between items
                Divider(),
            ],
          );
        });
  }
}
