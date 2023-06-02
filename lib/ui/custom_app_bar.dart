import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double appbarheight = 150;
  final bool hasreturn;

  MyAppBar({required this.title, this.hasreturn = true});
  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    final double app_height = screensize.height / 5;

    return Container(
      height: app_height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bar.png"), fit: BoxFit.fill)),
      padding: EdgeInsets.all(20),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                Visibility(
                    visible: hasreturn,
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )),
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
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appbarheight);
}
