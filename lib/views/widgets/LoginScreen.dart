import 'package:flutter/material.dart';
import 'package:flutter_app2/component/TXT.dart';
import 'package:flutter_app2/component/customButon.dart';
import 'package:flutter_app2/views/widgets/homeScreen.dart';
import 'package:flutter_app2/views/widgets/registerScreen.dart';
import '../../component/CustomTextField.dart';
import '../../component/SocialButton.dart';

class loginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/house.png',
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text('login to your account',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )),
                  SizedBox(
                    height: 16,
                  ),
                  custemTextField(
                    hintText: 'email',
                    obscuretext: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  custemTextField(obscuretext: true, hintText: 'password', textInputType: TextInputType.text, suffixIcon: Icon(Icons.remove_red_eye,color: Colors.black87,),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: double.infinity,
                    height: 60,
                    child: MaterialButton(
                        onPressed: () {

    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) {
    return homeScreen();
    }),
    );

                        },
                        child:txt(text: 'Login',)
                    ),
                  ),
                  SizedBox(height: 15,),
                  SocialButton(),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.grey,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\' t have an account? ',
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return RegisterScreen();
                  }),
                );
              },
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
