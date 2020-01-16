# jumping_bottom_nav_bar

Jumping Bottom Tab Bar.

## Getting Started

Very easily usable and customizable library. 
Colors and curves can be customised.

![Tab Sample](https://github.com/manojeeva/jumping_bottom_nav_bar/blob/master/example/sample.gif)


How to use.

Wrap your code with Default Tab Controller to animate when you change tab.

goto pubspec.yaml file add
```
  jumping_bottom_nav_bar : 0.0.1
```

import inside your project.
```
import 'package:jumping_bottom_nav_bar/jumping_nav_bar.dart';
```

Bottom Navigation include in the scafold.
```
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
```
Changing Icon and Curve colors 
```
   TabItemIcon(
        iconData: Icons.home,
        startColor: Colors.red,
        endColor: Colors.green,
        curveColor: Colors.yellow,
    )
```
Changing Circle Color
```
LinearGradient(
      colors: [
        Colors.purpleAccent,
        Colors.deepPurple,
      ],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
)   
```

 ## Full Example.
```
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

```