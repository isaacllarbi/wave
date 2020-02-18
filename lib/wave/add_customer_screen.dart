import 'package:flutter/material.dart';

class NewCustomerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 12.0, right: 12.0),
          child: Column(
            children: <Widget>[
              buildImportContactButton(context),
              buildCustomerInput(),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: 'Contact Name',
                  suffixIcon: InkWell(
                    onTap: () => {print('contact name clicked')},
                    child: Icon(
                      Icons.arrow_drop_down,
                    ),
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  labelText: 'Phone',
                  suffixIcon: InkWell(
                    onTap: () => {print('phone clicked')},
                    child: Icon(
                      Icons.arrow_drop_down,
                    ),
                  ),
                ),
              ),
              TextFormField(
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.pin_drop),
                  labelText: 'Address',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  InkWell buildImportContactButton(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(25),
            right: Radius.circular(25),
          ),
        ),
        child: Center(
          child: Text(
            'Import from contacts',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  buildCustomerInput() {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.business),
        labelText: 'Customer*',
        helperText: 'Business or person',
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text('Add customer'),
      leading: InkWell(
          onTap: () => Navigator.pop(context), child: Icon(Icons.cancel)),
      actions: actions(context),
    );
  }
 List<Widget> actions(BuildContext context) {
    return <Widget>[
      IconButton(
        // TODO Implement button onpress function
        onPressed: () => Navigator.of(context).pop,
        icon: Icon(Icons.check),
        iconSize: 24.0,
      ),
    ];
  }
}
