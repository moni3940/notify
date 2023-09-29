//import 'package:ai_camera_detector/main.dart';
import 'package:flutter/material.dart';
import 'package:notify1/student_event.dart';
import 'event_button.dart';
//import 'package:flutter/src/material/scaffold.dart';
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.purple.shade100,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Add a subheading1.png',
              height: 100,
              width: 500,
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Color(0xff000000),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Color(0xff000000),
                ),
              ),
              obscureText: true,
            ),

            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Color(0xff884593)),
              onPressed: (){
                if (_emailController.text == 'monishasamanta009@gmail.com' && _passwordController.text == '123456') {
                  // Navigate to the next screen or perform other actions on successful login
                  Navigator.push(context,MaterialPageRoute(builder: (context){return Event();},));
                } else {
                  if(_emailController.text.isEmpty && _passwordController.text.isEmpty){
                    //Container(child: Text("Enter email id and password"));
                    _scaffoldKey.currentState.showSnackBar(
                      SnackBar(
                        content: Text("Please"),
                      ),
                      );
                  }else{
                    Navigator.push(context,MaterialPageRoute(builder: (context){return Student();},));
                  }
                  // Show an error message or handle login failure
                }              }, child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }

  void _login() {
    String email = _emailController.text;
    String password = _passwordController.text;

    // Add your authentication logic here

    // Example:
    if (email == 'user@example.com' && password == 'password') {
      // Navigate to the next screen or perform other actions on successful login
    } else {
      // Show an error message or handle login failure
    }
  }
}