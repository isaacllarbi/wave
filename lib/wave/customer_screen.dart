import 'package:flutter/material.dart';

import 'add_customer_screen.dart';

class CustomerScreen extends StatelessWidget {
  final String _title = 'Customers';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        actions: actions(),
      ),
      body: ListView.builder(
        itemCount: _customers.length,
        itemBuilder: (BuildContext context, int index) =>
            _buildCustomerRow(index),
      ),
      floatingActionButton: buildFab(context),
    );
  }

  buildFab(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
       onPressed: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) => NewCustomerScreen(),
        ),
      ),
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

  final  _customers = [
    {
      'name': 'Isaac Ventures',
      'contact_name': 'Isaac Larbi',
    },
    {
      'name': 'Alhaji Stores',
      'contact_name': 'Baba Tunde',
    },
    {
      'name': 'Nyame Adom',
      'contact_name': 'Madam Christy',
    },
  ];

  _buildCustomerRow(int index) {
    var customer = _customers[index];
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blueAccent,
        child: Text(
          customer['name'].substring(0, 1).toUpperCase(),
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      title: Text(customer['name']),
      subtitle: Text(customer['contact_name']),
    );
  }
}
