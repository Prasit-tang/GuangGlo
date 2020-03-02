import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guangglo/utility/my_style.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
// Field

// Method
  Widget mySizebox() {
    return SizedBox(
      width: 5.0,
    );
  }

  Widget signUpButton() {
    return Expanded(
      child: OutlineButton(
        borderSide: BorderSide(color: MyStyle().darkColor),
        child: Text(
          'Sign Up',
          style: TextStyle(color: MyStyle().darkColor),
        ),
        onPressed: () {},
      ),
    );
  }

  Widget signInButton() {
    return Expanded(
      child: RaisedButton(
        color: MyStyle().darkColor,
        child: Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {},
      ),
    );
  }

  Widget showButton() {
    return Container(
      width: 250.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          signInButton(),
          mySizebox(),
          signUpButton(),
        ],
      ),
    ); // Row
  }

  Widget passwordForm() {
    return Container(
      width: 250.0,
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(hintText: 'Password : '),
      ),
    );
  }

  Widget userForm() {
    return Container(
      width: 250.0,
      child: TextField(
        decoration: InputDecoration(hintText: 'User : '),
      ),
    );
  }

  Widget showLogo() {
    return Container(
      height: 120.0,
      width: 120.0,
      child: Image.asset('images/logo.png'),
    );
  }

  Widget showAppName() {
    return Text(
      'Guang GLO',
      style: GoogleFonts.candal(
          textStyle: TextStyle(
        color: MyStyle().darkColor,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        fontSize: 30.0,
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: <Color>[Colors.white, MyStyle().primaryColor],radius: 1.0,
          ),
        ),
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            showLogo(),
            showAppName(),
            userForm(),
            passwordForm(),
            showButton(),
          ],
        )),
      ),
    );
  }
}
