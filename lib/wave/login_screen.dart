import 'package:flutter/material.dart';
import 'package:ui_samples/wave/home_screen.dart';

class LoginScreen extends StatelessWidget {
  static final String id= "login_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20),
                buildLogo(),
                SizedBox(height: 40),
                buildEmailInput(),
                SizedBox(height: 10),
                buildPasswordInput(),
                SizedBox(height: 50),
                buildLoginButton(context),
                SizedBox(height: 30),
                buildForgotPassword(),
                SizedBox(height: 30),
                buildDivider(context),
                SizedBox(height: 30),
                buildGoogleButton(context),
                SizedBox(height: 60),
                buildSignUpText(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text buildForgotPassword() {
    return Text(
      'Forgot password?',
      style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
    );
  }

  buildSignUpText() {
    return Row(
      children: <Widget>[
        Text(
          "Don't have a Wave account? ",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
        Text(
          "Sign up",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }

  Row buildDivider(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          color: Colors.black45,
          height: 0.5,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: Text('or'),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          color: Colors.black45,
          height: 0.5,
        ),
      ],
    );
  }

  Container buildEmailInput() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(10),
          right: Radius.circular(10),
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: 'Email',
          hintText: 'Email',
        ),
      ),
    );
  }

  Row buildLogo() {
    return Row(
      children: <Widget>[
        Icon(Icons.accessibility_new, size: 40, color: Colors.blueAccent),
        Text(
          'wave',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: 24,
          ),
        )
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }

  buildLoginButton(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushReplacementNamed(HomeScreen.id),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(25),
            right: Radius.circular(25),
          ),
        ),
        child: Center(
          child: FlatButton(
            child: Text(
              'Sign In',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            onPressed: () =>
                Navigator.of(context).pushReplacementNamed(HomeScreen.id),
          ),
        ),
      ),
    );
  }

  buildGoogleButton(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushReplacementNamed(HomeScreen.id),
      child: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(25),
            right: Radius.circular(25),
          ),
        ),
        child: Row(
          children: <Widget>[
            Icon(Icons.g_translate, color: Colors.white),
            Expanded(
              child: Center(
                child: Text(
                  'Sign in with Google',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildPasswordInput() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(10),
          right: Radius.circular(10),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: 'Password',
          hintText: 'Password',
          suffix: InkWell(
            onTap: () => {},
            child: Text(
              'SHOW',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ),
        ),
      ),
    );
  }
}
