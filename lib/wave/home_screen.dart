import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_samples/wave/customer_screen.dart';
import 'package:ui_samples/wave/invoice_screen.dart';
import 'package:ui_samples/wave/items_screen.dart';
import 'package:ui_samples/wave/more_screen.dart';

class HomeScreen extends StatefulWidget {
  static final String id= "home_screen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentTab = 0;
  PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _controller,
        onPageChanged: (int index) {
          if (this.mounted) {
            setState(() {
              _currentTab = index;
            });
          }
        },
        children: screens(),
      ),
      bottomNavigationBar: buildBottomTabs(),
    );
  }

  List<Widget> screens() {
    return <Widget>[
        InvoiceScreen(),
        CustomerScreen(),
        ItemsScreen(),
        MoreScreen(),
      ];
  }

  CupertinoTabBar buildBottomTabs() {
    return CupertinoTabBar(
      items: [
        BottomNavigationBarItem(
          title: Text('Invoices'),
          icon: Icon(
            Icons.note,
            size: 32.0,
          ),
        ),
        BottomNavigationBarItem(
          title: Text('Customers'),
          icon: Icon(
            Icons.person_outline,
            size: 32.0,
          ),
        ),
        BottomNavigationBarItem(
          title: Text('Items'),
          icon: Icon(
            Icons.check_box_outline_blank,
            size: 32.0,
          ),
        ),
        BottomNavigationBarItem(
          title: Text('More'),
          icon: Icon(
            Icons.line_weight,
            size: 32.0,
          ),
        ),
      ],
      onTap: (int index) {
        if (this.mounted) {
          setState(() {
            _currentTab = index;
          });
        }
        _controller.animateToPage(
          index,
          duration: Duration(milliseconds: 1),
          curve: Curves.easeIn,
        );
      },
      currentIndex: _currentTab,
    );
  }
}
