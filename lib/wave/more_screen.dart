import 'package:flutter/material.dart';
import 'package:ui_samples/wave/login_screen.dart';

class MoreScreen extends StatelessWidget {
  final String _title = 'More';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildHeader(context),
            buildSettingTitle(title: _businessName),
            buildSettingItem(
              icon: Icons.folder_open,
              title: 'Invoice customization',
            ),
            buildSettingItem(
              icon: Icons.settings,
              title: 'Invoice defaults',
            ),
            buildSettingTitle(title: 'Account'),
            buildSettingItem(
              icon: Icons.compare_arrows,
              title: 'Switch business',
            ),
            buildSettingItem(
              context: context,

              icon: Icons.exit_to_app,
              title: 'Logout',
            ),
            buildSettingTitle(title: 'Wave Invoicing'),
            buildSettingItem(
              icon: Icons.rate_review,
              title: 'Rate the app',
            ),
            buildSettingItem(
              icon: Icons.help,
              title: 'Help',
            ),
            buildSettingItem(
              icon: Icons.info_outline,
              title: 'About Wave Invoicing',
            ),
          ],
        ),
      ),
    );
  }

  buildSettingTitle({String title}) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 16, bottom: 8),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  buildSettingItem({
    BuildContext context,
    IconData icon,
    String title,
    String route,
  }) {
    return InkWell(
      onTap: () => Navigator.of(context).pushReplacementNamed(LoginScreen.id),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                icon,
                size: 30.0,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(),
                    ),
                    SizedBox(height: 20),
                    Divider(
                      color: Colors.black54,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  final String _businessName = 'JNC Enterprise';

  Container buildHeader(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      color: Colors.black87,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            _businessName,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
