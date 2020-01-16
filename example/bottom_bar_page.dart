import 'package:flutter/material.dart';
import 'package:jumping_bottom_nav_bar/jumping_nav_bar.dart';

class BottomBarPage extends StatefulWidget {
  @override
  _BottomBarPageState createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int selectedIndex = 2;

  final iconList = [
    TabItemIcon(
        iconData: Icons.home,
        startColor: Colors.red,
        endColor: Colors.green,
        curveColor: Colors.yellow),
    TabItemIcon(iconData: Icons.healing, curveColor: Colors.orange),
    TabItemIcon(iconData: Icons.location_on, curveColor: Colors.green),
    TabItemIcon(iconData: Icons.notifications),
    TabItemIcon(iconData: Icons.supervised_user_circle),
  ];
  void onChangeTab(int index) {
    selectedIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: iconList.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Bottom Bar Page"),
        ),
        body: TabBarView(
          children: [
            new Container(
              color: Colors.yellow,
            ),
            new Container(
              color: Colors.orange,
            ),
            new Container(
              color: Colors.lightGreen,
            ),
            new Container(
              color: Colors.red,
            ),
            new Container(
              color: Colors.blueAccent,
            ),
          ],
        ),
        bottomNavigationBar: JumpingTabBar(
          onChangeTab: onChangeTab,
          circleGradient: LinearGradient(
            colors: [
              Colors.purpleAccent,
              Colors.deepPurple,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          items: iconList,
          selectedIndex: selectedIndex,
        ),
      ),
    );
  }
}
