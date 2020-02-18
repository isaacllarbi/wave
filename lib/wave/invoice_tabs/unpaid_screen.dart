import 'package:flutter/material.dart';

class UnpaidScreen extends StatefulWidget {
  @override
  _UnpaidScreenState createState() => _UnpaidScreenState();
}

class _UnpaidScreenState extends State<UnpaidScreen> {
  bool _isEmpty = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isEmpty
          ? buildEmptyView()
          : Text('Todo: Build list of unpaid invoices'),
    );
  }

  Column buildEmptyView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.email,
          size: 150.0,
          color: Colors.blue,
        ),
        Text(
          'You have no unpaid invoices',
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
              'Sent, viewed, partially paid, or overdue invoices will appear here.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16),
        ),
      ],
    );
  }
}
