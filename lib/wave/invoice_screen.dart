import 'package:flutter/material.dart';
import 'package:ui_samples/wave/add_invoice_screen.dart';
import 'package:ui_samples/wave/invoice_tabs/all_screen.dart';
import 'package:ui_samples/wave/invoice_tabs/draft_screen.dart';
import 'package:ui_samples/wave/invoice_tabs/unpaid_screen.dart';
import 'package:ui_samples/wave/login_screen.dart';

class InvoiceScreen extends StatefulWidget {
  static final String id= 'invoce_screen';
  @override
  _InvoiceScreenState createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    var _title = 'Invoices';
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        actions: actions(context),
      ),
      body: buildDefaultTabController(context),
      floatingActionButton: buildFab(),
    );
  }

  buildFab() {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) => NewInvoiceScreen(),
        ),
      ),
    );
  }

  DefaultTabController buildDefaultTabController(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            color: Theme.of(context).primaryColor,
            child: TabBar(
              tabs: tabs(),
            ),
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: screens(),
        ),
      ),
    );
  }

  List<Widget> screens() {
    return <Widget>[
      UnpaidScreen(),
      DraftScreen(),
      AllScreen(),
    ];
  }

  List<Widget> tabs() {
    return <Widget>[
      Tab(text: 'UNPAID'),
      Tab(text: 'DRAFT'),
      Tab(text: 'ALL'),
    ];
  }

  List<Widget> actions(BuildContext context) {
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
