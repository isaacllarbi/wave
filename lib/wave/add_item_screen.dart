import 'package:flutter/material.dart';

class NewItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 12.0, right: 12.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Name*'),
              ),
              TextFormField(
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(labelText: 'Description'),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                initialValue: '0',
                decoration: InputDecoration(labelText: 'Price*'),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Tax',
                  hintText: 'Select tax(es)',
                  suffixIcon: InkWell(
                    onTap: () => {print('contact name clicked')},
                    child: Icon(Icons.arrow_drop_down),
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  labelText: 'Income account',
                  hintText: 'Sales',
                  suffixIcon: InkWell(
                    onTap: () => {print('phone clicked')},
                    child: Icon(Icons.arrow_drop_down),
                  ),
                  helperMaxLines: 2,
                  helperText: 'An income account is used for proper bookkeeping of your sales and to kee your reports accurate.',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text('Add item'),
      leading: InkWell(
          onTap: () => Navigator.pop(context), child: Icon(Icons.cancel)),
      actions: actions(context),
    );
  }

  List<Widget> actions(BuildContext context) {
    return <Widget>[
      IconButton(
        // TODO Implement button onpress function
        onPressed: () =>Navigator.of(context).pop,
        icon: Icon(Icons.check),
        iconSize: 24.0,
      ),
    ];
  }
}
