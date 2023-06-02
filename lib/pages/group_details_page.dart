import 'package:flutter/material.dart';
import 'package:uchoose/ui/custom_app_bar.dart';
import 'package:uchoose/ui/member_item.dart';

class GroupDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Nom du groupe",
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [MemberItem(), MemberItem(), MemberItem()],
              ),
            ),
            Text("Membres: ")
          ],
        ),
      ),
    );
  }
}
