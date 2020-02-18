import 'package:flutter/material.dart';
import 'package:ui_samples/wave/add_item_screen.dart';

class ItemsScreen extends StatelessWidget {
  final String _title = 'Items';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        actions: actions(),
      ),
      body: buildEmptyView(),
      floatingActionButton: _buildFab(context),
    );
  }

  _buildFab(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) => NewItemScreen(),
        ),
      ),
    );
  }

  Column buildEmptyView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.radio_button_checked,
          size: 150.0,
          color: Colors.blue,
        ),
        Text(
          "You haven't created any items",
          style: TextStyle(
            color: Colors.black54,
            fontSize: 24.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Padding(
          child: Center(
            child: Text(
              "Create an item to add to your invoice",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16),
        )
      ],
    );
  }

  List<Widget> actions() {
    return <Widget>[
      IconButton(
        // TODO Implement button onpress function
        onPressed: () => null,
        icon: Icon(Icons.search),
        iconSize: 24.0,
      ),
      IconButton(
        // TODO Implement button onpress function
        onPressed: () => null,
        icon: Icon(Icons.help_outline),
        iconSize: 24,
      ),
    ];
  }
}
