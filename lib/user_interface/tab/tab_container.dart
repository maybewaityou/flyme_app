import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/feature/home/page/page.dart';
import 'package:flyme_app/generated/l10n.dart';
import 'package:oktoast/oktoast.dart';

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
        'Index 1: Community',
        style: optionStyle,
      ),
    ),
    Container(),
    const Center(
      child: Text(
        'Index 2: ScenicArea',
        style: optionStyle,
      ),
    ),
    const Center(
      child: Text(
        'Index 3: Me',
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
            showToast('连续按两次返回键, 退出应用', position: ToastPosition.bottom);
            return false;
          }
          // 退出 App
          await SystemChannels.platform.invokeMethod('SystemNavigator.pop');
          return false;
        },
        child: PageView.builder(
          itemBuilder: (ctx, index) => _widgetOptions[index],
          itemCount: _widgetOptions.length,
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
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
            icon: const Icon(Icons.forum),
            title: Text(S.of(context).tabCommunity),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.add),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.map),
            title: Text(S.of(context).tabScenicArea),
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
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
        ),
        child: FloatingActionButton(
          onPressed: () {},
          elevation: 0,
          highlightElevation: 0,
          child: const Icon(Icons.photo, color: Colors.white, size: 35),
        ),
      ),
    );
  }
}
