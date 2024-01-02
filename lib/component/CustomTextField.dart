import 'package:flutter/material.dart';

class custemTextField extends StatelessWidget {
  custemTextField(
      {this.hintText, required this.obscuretext, this.textInputType,  Icon? suffixIcon});
  String? hintText;
  bool obscuretext;
  final textInputType;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
      ),
      height: 55,
      child: TextFormField(
        controller: TextEditingController(),
        keyboardType: TextInputType.emailAddress,
        obscureText: obscuretext,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(12)),
          hintText: hintText,
          filled: true,
          hintStyle: TextStyle(
            color: Color(0xFF475569),
            fontSize: 14,
            fontWeight: FontWeight.w400,
            height: 0.10,
            letterSpacing: 0.30,
          ),
        ),
      ),
    );
  }
}
