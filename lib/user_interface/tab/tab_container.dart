import 'package:flutter/material.dart';
import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/generated/l10n.dart';
import 'package:flyme_app/user_interface/tab/home/page/page.dart';

@FRoute(url: '/tab')
class TabContainer extends StatefulWidget {
  TabContainer({Key key}) : super(key: key);

  @override
  _TabContainerState createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer> {
  final _pageController = PageController();
  int _selectedIndex = 0;
  DateTime _lastPressed;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    const Center(
      child: Text(
        'Index 1: Business',
        style: optionStyle,
      ),
    ),
    Container(),
    const Center(
      child: Text(
        'Index 2: School',
        style: optionStyle,
      ),
    ),
    const Center(
      child: Text(
        'Index 3: School',
        style: optionStyle,
      ),
    ),
  ];

  void _onItemTapped(int index) {
    if (index == 2) return;

    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          if (_lastPressed == null ||
              DateTime.now().difference(_lastPressed) > Duration(seconds: 1)) {
            // 两次点击间隔超过1秒则重新计时
            _lastPressed = DateTime.now();
            return false;
          }
          return true;
        },
        child: PageView.builder(
          itemBuilder: (ctx, index) => _widgetOptions[index],
          itemCount: _widgetOptions.length,
          controller: _pageController,
          physics: NeverScrollableScrollPhysics(),
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            title: Text(S.of(context).tabHome),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.search),
            title: Text(S.of(context).tabDiscover),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.school),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.school),
            title: Text(S.of(context).tabService),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.account_circle),
            title: Text(S.of(context).tabUser),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 85,
        width: 85,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
        ),
        child: FloatingActionButton(
          onPressed: () {},
          elevation: 0,
          highlightElevation: 0,
          child: const Icon(Icons.camera_alt, color: Colors.white),
        ),
      ),
    );
  }
}
