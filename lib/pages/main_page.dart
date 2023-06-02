import 'package:flutter/material.dart';
import 'package:uchoose/fragement/group_fragment.dart';
import 'package:uchoose/fragement/home_fragment.dart';
import 'package:uchoose/fragement/vote_fragment.dart';
import 'package:uchoose/ui/custom_app_bar.dart';
import 'package:uchoose/ui/navigation_ui.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Salut",
        hasreturn: false,
      ),
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: Container(
            child: Navigation(
          items: [
            NavigationItem(
                icon: Icons.home, title: "Acceuil", fragment: HomeFragment()),
            NavigationItem(
                icon: Icons.group, title: "Groupe", fragment: GroupFragment()),
            NavigationItem(
                icon: Icons.check, title: "Vote", fragment: VoteFragment()),
          ],
        )),
      ),
    );
  }
}
