import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  MyAppBar({required this.title});
  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    final double app_height = screensize.height / 5;

    return Container(
      height: 150,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bar.png"), fit: BoxFit.fill)),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "U-Choose",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
          Center(
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 26),
            ),
          )
        ],
      ),
    );
  }
}
