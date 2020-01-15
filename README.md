# jumping_nav_bar

Jumbping Tab Bar.

## Getting Started

Very easily usable and customizable library. 
Colors and curves can be customised.

How to use.

Wrap your code with Default Tab Controller to animate when you change tab.

Bottom Navigation 
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
Chaning Icon and Curve colors 
```

   TabItemIcon(
        iconData: Icons.home,
        startColor: Colors.red,
        endColor: Colors.green,
        curveColor: Colors.yellow,
        )

```
Chaning Circle Color
```

LinearGradient(
            colors: [
              Colors.purpleAccent,
              Colors.deepPurple,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),    

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