import 'package:flutter/material.dart';
import 'package:flutter_app2/component/TXT.dart';
import 'package:flutter_app2/views/widgets/LoginScreen.dart';
import 'package:flutter_app2/views/widgets/homeScreen.dart';

import '../../component/CustomTextField.dart';
import '../../component/SocialButton.dart';
import '../../component/customButon.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/house.png')),
              SizedBox(
                height: 8,
              ),
              Text('register your account',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )),
              custemTextField(
                  hintText: 'email',
                  obscuretext: false,
                  textInputType: TextInputType.emailAddress),
              SizedBox(
                height: 10,
              ),
              custemTextField(
                hintText: 'password',
                obscuretext: true,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 10,
              ),
              custemTextField(
                  hintText: 'Confirm password',
                  obscuretext: true,
                  textInputType: TextInputType.text),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                width: double.infinity,
                height: 60,
                child: MaterialButton(
                    onPressed: () {   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return loginScreen();
                      }),
                    ); },
                    child: txt(text: ('register'),)),
              ),
              SizedBox(
                height: 10,
              ),
              SocialButton(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ' already have acount ! ',
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return loginScreen();
                          }),
                        );
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.blue),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
