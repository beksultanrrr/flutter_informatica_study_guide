
import 'package:flutter/material.dart';
class searchBar extends StatelessWidget {
  const searchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 40),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 3, vertical: 10),
            child: Icon(Icons.search),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'поиск',
                border: InputBorder.none,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Icon(Icons.filter_list),
          ),
        ],
      ),
    );
  }
}
