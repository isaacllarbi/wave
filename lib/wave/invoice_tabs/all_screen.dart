import 'package:flutter/material.dart';

class AllScreen extends StatefulWidget {
  @override
  _AllScreenState createState() => _AllScreenState();
}

class _AllScreenState extends State<AllScreen> {
 bool _isEmpty = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isEmpty
          ? buildEmptyView()
          : Text('Todo: Build list of all invoices'),
    );
  }

   

  Column buildEmptyView() {
    return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Icon(
        Icons.format_align_center,
        size: 150.0,
        color: Colors.blue,
      ),
      Text(
        "You haven't created any invoices",
        style: TextStyle(
          color: Colors.black54,
          fontSize: 24.0,
          fontWeight: FontWeight.w400,
        ),
      ),
      SizedBox(height: 8.0),
      Padding(
        child: Center(
          child: Text(
            'Create your first invoice and get paid for your excellent work',
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
}
