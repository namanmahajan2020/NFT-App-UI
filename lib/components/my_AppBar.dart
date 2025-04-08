import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Explore",
                style: TextStyle(fontSize: 38, fontWeight: FontWeight.w400),
              ),
              Text(
                "Collections",
                style: TextStyle(fontSize: 38, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white38, width: 1.5),
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(16),
            ),
            child: IconButton(
              icon: Icon(Icons.search, color: Colors.grey[800], size: 40),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
