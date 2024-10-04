// import 'package:flutter/material.dart';
// import 'package:latquiz/dashboard.dart';

// class halLogin extends StatefulWidget {
//   halLogin({super.key});

//   @override
//   State<halLogin> createState() => _halLoginState();
// }

// class _halLoginState extends State<halLogin> {
//   String username = '';
//   String password = '';
//   bool isLoginSuccess = true;
//   bool visible = true;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       appBar: AppBar(
//         title: Text('Login Page'),
//       ),
//       body: Column(
//         children: [
//           _logoLogin(),
//           _usernameField(),
//           _passwordField(),
//           _loginButton(context)
//         ],
//       ),
//     ));
//   }

//   _navigatePage() async {
//     await Future.delayed(Duration(seconds: 2));
//     Navigator.push(context, MaterialPageRoute(builder: (context) {
//       return dashboard(user: username);
//     }));
//   }

//   Widget _usernameField() {
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
//       child: TextFormField(
//         onChanged: (value) {
//           username = value;
//         },
//         decoration: InputDecoration(
//             hintText: 'masukkan test',
//             enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(5),
//                 borderSide: BorderSide(color: Colors.blue)),
//             focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10),
//                 borderSide: BorderSide(color: Colors.blue))),
//       ),
//     );
//   }

//   Widget _passwordField() {
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
//       child: TextFormField(
//         obscureText: visible,
//         onChanged: (value) {
//           password = value;
//         },
//         decoration: InputDecoration(
//             suffixIcon: IconButton(
//               onPressed: () {
//                 setState(() {
//                   visible = !visible;
//                 });
//               },
//               icon: Icon(visible ? Icons.visibility : Icons.visibility_off),
//             ),
//             hintText: 'masukkan 123',
//             enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(5),
//                 borderSide: BorderSide(color: Colors.blue)),
//             focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10),
//                 borderSide: BorderSide(color: Colors.blue))),
//       ),
//     );
//   }

//   Widget _loginButton(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
//       width: double.infinity,
//       child: ElevatedButton(
//           onPressed: () {
//             String text;
//             if (username == 'test' && password == '123') {
//               text = 'Login Berhasil';
//               setState(() {
//                 isLoginSuccess = true;
//               });
//               _navigatePage();
//             } else {
//               text = 'Login Gagal';
//               setState(() {
//                 isLoginSuccess = false;
//               });
//             }
//             SnackBar snackBar = SnackBar(
//               content: Text(text),
//               duration: Duration(seconds: 1),
//               backgroundColor: isLoginSuccess ? Colors.green : Colors.red,
//             );
//             ScaffoldMessenger.of(context).showSnackBar(snackBar);
//           },
//           child: Text('Login')),
//     );
//   }

//   Widget _logoLogin() {
//     return const Center(
//       child: Image(
//         image: AssetImage('images/dababy.jpg'),
//         width: 200,
//         height: 200,
//       ),
//     );
//   }
// }
