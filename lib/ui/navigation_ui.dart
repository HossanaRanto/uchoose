import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  final List<NavigationItem> items;
  const Navigation({super.key, required this.items});

  @override
  State<Navigation> createState() => _NavigationState(items: items);
}

class _NavigationState extends State<Navigation> {
  final List<NavigationItem> items;
  int current = 1;
  Map<int, Widget> fragmentMap = {};

  _NavigationState({required this.items});

  Widget _getFragment(int index) {
    if (!fragmentMap.containsKey(index)) {
      // If fragment not in the map, create a new instance
      fragmentMap[index] = items[index].fragment;
    }
    return fragmentMap[index]!; // Retrieve the fragment from the map
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blue,
      child: Column(
        children: [
          Container(
            height: 60,
            padding: EdgeInsets.all(10),
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      // items[current].isselected = false;
                      current = index;
                      // items[current].isselected = true;
                    });
                  },
                  child: AnimatedContainer(
                      duration: Duration(microseconds: 300),
                      constraints: BoxConstraints(minWidth: 50),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: MediaQuery.of(context).size.width / items.length -
                          (items.length * 5) -
                          5,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: current == index ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            items[index].icon,
                            color:
                                current == index ? Colors.white : Colors.blue,
                          ),
                          Text(
                            items[index].title,
                            style: TextStyle(
                                color: current == index
                                    ? Colors.white
                                    : Colors.blue),
                          )
                        ],
                      )),
                );
              },
            ),
          ),
          Expanded(
            child: _getFragment(current),
          )
        ],
      ),
    );
  }
}

class NavigationItem {
  final IconData icon;
  final String title;
  final Widget fragment;

  NavigationItem(
      {required this.icon, required this.title, required this.fragment});
}
