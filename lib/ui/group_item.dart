import 'package:flutter/material.dart';

class GroupItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.blue[100], borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nom du groupe",
                style: TextStyle(
                    color: Colors.blue[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              Text(
                "Membres: nombre",
                style: TextStyle(color: Colors.white, fontSize: 12),
              )
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.expand,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
