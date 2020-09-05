import 'package:flutter/material.dart';
import 'package:flutterapp/demo.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _password = "";
  String _mobile = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Here"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Text(
              'Login Information',
              style: TextStyle(fontSize: 20),
            ),
            Image.asset('assets/images/logo.png'),
            TextFormField(
              onSaved: (value) => _mobile = value, // <= mobile
              keyboardType: TextInputType.phone,
              maxLength: 10,
              decoration: InputDecoration(labelText: "Mobile"),
            ),
            TextFormField(
                onSaved: (value) => _password = value, // <= password
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(labelText: "Password")),
            RaisedButton(
                child: Text("LOGIN"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Demo()),
                  );
                }),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Demo()));
              },
              child: Text(
                'Not Register yet ? Register Now...!',
                style: TextStyle(fontSize: 20.0, color: Colors.green),
              ),
            )
          ],
        ),
      ),
    );
  }
}
