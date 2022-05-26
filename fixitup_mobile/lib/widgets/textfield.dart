import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  String _hintText;
  Icon _prefixIcon;
  bool obscureText = false;
  TextEditingController? controller;

  AppTextField(this._hintText, this._prefixIcon,
      {required this.obscureText, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          fillColor: Colors.red,
          prefixIcon: _prefixIcon,
          border: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Color.fromRGBO(45, 66, 99, 1), width: 20),
              gapPadding: 1,
              borderRadius: BorderRadius.circular(20)),
          hintText: _hintText,
        ),
      ),
    );
  }
}
