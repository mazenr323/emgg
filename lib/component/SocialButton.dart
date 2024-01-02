import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            '- or sign in with -',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  print('google');
                },
                child: Container(
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.1), blurRadius: 10)
                      ]),
                  child: Image.asset(
                    'assets/images/Google.png',
                    height: 30,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  print('faceBook');
                },
                child: Container(
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.1), blurRadius: 10)
                      ]),
                  child: Image.asset(
                    'assets/images/Facebook.png',
                    height: 30,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  print('apple');
                },
                child: Container(
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.1), blurRadius: 10)
                      ]),
                  child: Image.asset(
                    'assets/images/apple .png',
                    height: 30,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
