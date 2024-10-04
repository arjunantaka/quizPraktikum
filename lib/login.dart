import 'package:flutter/material.dart';
import 'homePage.dart';

class loginPage extends StatefulWidget {
  loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String username = '';
  String password = '';
  bool suksesLogin = true;

  _navigatePage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return homePage(user: username);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        backgroundColor: Colors.blue[300],
      ),
      body: Column(
        children: [
          _logo(),
          _usernameField(),
          _passwordField(),
          _loginButton(context)
        ],
      ),
    ));
  }

  Widget _usernameField() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
      child: TextFormField(
        onChanged: (value) {
          username = value;
        },
        decoration: InputDecoration(
            hintText: 'username',
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.black)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.black))),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
      child: TextFormField(
        obscureText: true,
        onChanged: (value) {
          password = value;
        },
        decoration: InputDecoration(
            hintText: 'passwot',
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.black)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.black))),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {
            String notif;
            if (username == '123' && password == '123') {
              notif = 'Sukses Login';
              setState(() {
                suksesLogin = true;
              });
              _navigatePage();
            } else {
              notif = 'Login Gagal';
              setState(() {
                suksesLogin = false;
              });
              SnackBar snack = SnackBar(content: Text('$notif'));
              ScaffoldMessenger.of(context).showSnackBar(snack);
            }
          },
          child: Text('Login')),
    );
  }

  Widget _logo() {
    return const Center(
      child: Image(
        image: AssetImage('assets/upnLogo.png'),
      ),
    );
  }
}
