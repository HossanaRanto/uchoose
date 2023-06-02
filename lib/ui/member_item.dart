import 'package:flutter/material.dart';

class MemberItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: Colors.blue[100], borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.blue[50]),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/avatar.jpg"),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nom de l'utilisateur",
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                Text(
                  "Nom",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
