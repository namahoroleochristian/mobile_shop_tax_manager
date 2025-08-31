import 'package:flutter/material.dart';

class Bottomnavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
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
                icon: Icon(Icons.home,
                    color: const Color.fromRGBO(0, 208, 158, 1)),
                onPressed: () {
                  Navigator.pushNamed((context), '/homepage');
                }),
            IconButton(
                icon: Icon(Icons.inventory, color: Colors.grey),
                onPressed: () {
                  Navigator.pushNamed((context), '/inventory');
                }),
            IconButton(
                icon: Image.asset(
                    'C:/bcup/educat/lib/assets/rra1.png'),
                onPressed: () {
                  Navigator.pushNamed((context), '/taxes');
                }),
            IconButton(
                icon: Icon(Icons.settings, color: Colors.grey),
                onPressed: () {
                  Navigator.pushNamed((context), '/setting');
                }),
          ],
        ),
      ),
    );
  }
}
