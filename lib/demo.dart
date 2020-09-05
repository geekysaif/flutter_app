import 'package:flutter/material.dart';
import 'package:flutterapp/login_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Demo extends StatefulWidget {
  static String tag = 'demo-page';

  @override
  _DemoPageState createState() => new _DemoPageState();
}

class _DemoPageState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      /*child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 150.0,*/
        child: Image.asset('assets/images/login_punch.png'),
     /* ),*/
    );

    final email = TextFormField(
      keyboardType: TextInputType.phone,
      autofocus: false,
      maxLength: 10,
      //  initialValue: 'alucard@gmail.com',
      decoration: InputDecoration(
        hintText: 'Mobile',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      //initialValue: 'some password',

      //used for password view
      obscureText: true,

      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          // Navigator.of(context).pushNamed(Demo.tag);
          error_toasty("Login Button Clicked");
        },
        padding: EdgeInsets.all(12),
        color: Colors.deepOrange,
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {
        Navigator.pop(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ));
      },
    );

    return Scaffold(
    /*  appBar: AppBar(
        title: Text("Login Page"),
      ),*/
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel
          ],
        ),
      ),
    );
  }


  void error_toasty(String msggg) {
    Fluttertoast.showToast(
        msg: msggg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
  void success_toasty(String msggg) {
    Fluttertoast.showToast(
        msg: msggg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
  }
  void warning_toasty(String msggg) {
    Fluttertoast.showToast(
        msg: msggg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.yellow,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
