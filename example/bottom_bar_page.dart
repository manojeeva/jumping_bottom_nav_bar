import 'package:flutter/material.dart';
import 'package:jumping_bottom_nav_bar/jumping_bottom_nav_bar.dart';

class BottomBarPage extends StatefulWidget {
  @override
  _BottomBarPageState createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int selectedIndex = 2;

  void onChangeTab(int index) {
    selectedIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
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
          items: [
            TabItemIcon(
              buildWidget: (_, color) => Container(
                color: color.value,
                child: Text("1"),
              ),
              startColor: Colors.red,
              endColor: Colors.green,
              curveColor: Colors.yellow,
            ),
            TabItemIcon(iconData: Icons.healing, curveColor: Colors.orange),
            TabItemIcon(iconData: Icons.location_on, curveColor: Colors.green),
            TabItemIcon(
              buildWidget: (_, color) => Stack(
                children: <Widget>[
                  new Icon(
                    Icons.notifications,
                    size: 30,
                  ),
                  new Positioned(
                    top: 1.0,
                    right: 0.0,
                    child: new Stack(
                      children: <Widget>[
                        new Icon(
                          Icons.brightness_1,
                          size: 18.0,
                          color: Colors.green[800],
                        ),
                        new Positioned(
                          top: 1.0,
                          right: 4.0,
                          child: new Text("2",
                              style: new TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500,
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            TabItemIcon(iconData: Icons.supervised_user_circle),
          ],
          selectedIndex: selectedIndex,
        ),
      ),
    );
  }
}
