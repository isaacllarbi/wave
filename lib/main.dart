import 'package:flutter/material.dart';
import 'package:ui_samples/wave/home_screen.dart';
import 'package:ui_samples/wave/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: {
        LoginScreen.id: (BuildContext ctx) => LoginScreen(),
        HomeScreen.id: (BuildContext ctx) => HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

// class StartScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext ctx) {
//     return Scaffold(
//       body: ListView(
//         children: <Widget>[
//           //Wave
//           buildWave(ctx),
//         ],
//       ),
//     );
//   }

//   buildWave(BuildContext context) {
//     return ListTile(
//       onTap: () => Navigator.pushReplacementNamed(context, '/wave'),
//       leading: Icon(Icons.satellite, size: 30.0),
//       title: Text('Wave Invoicing by Flutterwave'),
//       subtitle: Text('Create and send professional invoices on the go'),
//     );
//   }
// }
