import 'package:flutter/material.dart';
import 'package:uchoose/ui/group_item.dart';

class GroupFragment extends StatelessWidget {
  const GroupFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: Column(
          children: [
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 10),
            //   child: Container(
            //     decoration: BoxDecoration(
            //         color: Colors.white,
            //         border: Border.all(color: Colors.white),
            //         borderRadius: BorderRadius.circular(30),
            //         boxShadow: [
            //           BoxShadow(
            //               blurRadius: 5,
            //               color: Colors.grey.withOpacity(0.2),
            //               spreadRadius: 5,
            //               offset: Offset(1, 1))
            //         ]),
            //     child: Padding(
            //       padding: EdgeInsets.symmetric(horizontal: 10),
            //       child: TextField(
            //         decoration: InputDecoration(
            //             border: InputBorder.none, hintText: "Rechercher"),
            //       ),
            //     ),
            //   ),
            // ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mes Groupes",
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  GestureDetector(
                      child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/gradient.png"),
                                  fit: BoxFit.fill)),
                          child: Center(
                            child: Text(
                              "Découver",
                              style: TextStyle(color: Colors.white),
                            ),
                          )))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: ListView(
                  children: [
                    GroupItem(),
                    GroupItem(),
                    GroupItem(),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
