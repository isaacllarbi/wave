import 'package:flutter/material.dart';

class DraftScreen extends StatefulWidget {
  @override
  _DraftScreenState createState() => _DraftScreenState();
}

class _DraftScreenState extends State<DraftScreen> {
  final String _title = 'DRAFT';

 bool _isEmpty = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isEmpty
          ? buildEmptyView()
          : Text('Todo: Build list of draft invoices'),
    );
  }


  Column buildEmptyView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.folder_open,
          size: 150.0,
          color: Colors.blue,
        ),
        Text(
          'You have no draft invoices',
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
              "Create a new invoiceby tapping on the '+' button ",
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
