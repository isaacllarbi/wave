import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewInvoiceScreen extends StatefulWidget {
  @override
  _NewInvoiceScreenState createState() => _NewInvoiceScreenState();
}

class _NewInvoiceScreenState extends State<NewInvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New invoice'),
        actions: actions(),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: buildSingleChildScrollView(),
          ),
          buildButtons(),
        ],
      ),
    );
  }

  SingleChildScrollView buildSingleChildScrollView() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 12.0, right: 12.0),
        child: Column(
          children: <Widget>[
            buildHeader(),
            SizedBox(height: 12),
            buildDates(),
            SizedBox(height: 32),
            buildAddCustomer(),
            Divider(),
            buildAddItem(),
            Divider(),
            buildSubTotal(),
            Divider(),
            buildTotal(),
            buildDueTotal(),
            buildNotes(),
            buildFooter(),
            Divider(),
          ],
        ),
      ),
    );
  }

  buildAddCustomer() {
    return InkWell(
      onTap: () => {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.person_add, size: 40, color: Colors.blue),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Add customer',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }

  buildTotal() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Total',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'GHc0.00',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }

  buildDueTotal() {
    return InkWell(
      onTap: () => {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Due (GHS)',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Icon(Icons.arrow_drop_down, color: Colors.black)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'GHc0.00',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  buildNotes() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: 'Notes',
          helperText: 'Additional notes visible to your customer'),
    );
  }

  buildFooter() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: 'Footer',
          helperText: 'Tax information or a thank you note to your customer'),
    );
  }

  buildButtons() {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text('Record payment'),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text('Send invoice'),
        ),
      ],
    );
  }

  buildAddItem() {
    return InkWell(
      onTap: () => {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.add_box, size: 40, color: Colors.blue),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Add item',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }

  buildSubTotal() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Subtotal',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'GHc0.00',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }

  buildHeader() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
      color: Colors.black54,
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                'Invoice 1',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                'Project name/description',
                style: TextStyle(color: Colors.white),
              )
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          Column(
            children: <Widget>[
              Text(
                'DRAFT',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                'P.O/S.O number',
                style: TextStyle(color: Colors.white),
              )
            ],
            crossAxisAlignment: CrossAxisAlignment.end,
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }

  DateTime invoiceDate;
  buildDates() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        buildDatePicker(),
        buildDueDate(),
      ],
    );
  }

  Column buildDatePicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Invoice date'),
        SizedBox(height: 4.0),
        InkWell(
          onTap: () => showDatePicker(
            context: context,
            firstDate: DateTime.fromMillisecondsSinceEpoch(982459983000),
            initialDate: DateTime.now(),
            lastDate: DateTime.fromMillisecondsSinceEpoch(1897608783000),
          ),
          child: Row(
            children: <Widget>[
              invoiceDate != null
                  ? Text(
                      '${invoiceDate.day.toString()} - ${invoiceDate.month.toString()} - ${invoiceDate.year.toString()}')
                  : Text(
                      '${DateTime.now().day.toString()} - ${DateTime.now().month.toString()} - ${DateTime.now().year.toString()}'),
              Icon(Icons.arrow_drop_down),
            ],
          ),
        ),
      ],
    );
  }

  Column buildDueDate() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Payment due'),
        SizedBox(height: 4.0),
        InkWell(
          onTap: _showDueDatesDialog,
          child: Row(
            children: <Widget>[
              Text(paymentDueOptions[_selected]),
              Icon(Icons.arrow_drop_down),
            ],
          ),
        ),
      ],
    );
  }

  int _selected = 0;
  _showDueDatesDialog() async {
    int selected = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return new SimpleDialog(
          title: const Text('Select'),
          children: paymentDueOptions
              .asMap().entries.map(
                (entry) => SimpleDialogOption(
                  onPressed: () => Navigator.pop(context,entry.key),
                  child: Text(entry.value.toString()),
                ),
              )
              .toList(),
        );
      },
    );
    print(selected);
    setState(() {
      _selected = selected;
    });
  }

  List<String> paymentDueOptions = [
    'On receipt',
    'Within 15 days',
    'Within 30 days',
    'Within 45 days',
    'Within 60 days',
    'Custom'
  ];

  List<Widget> actions() {
    return <Widget>[
      IconButton(
        // TODO Implement button onpress function
        onPressed: () => null,
        icon: Icon(Icons.folder_special),
        iconSize: 24.0,
      ),
      IconButton(
        // TODO Implement button onpress function
        onPressed: () => null,
        icon: Icon(Icons.more_vert),
        iconSize: 24.0,
      ),
    ];
  }
}
