import 'package:fixitup_mobile/widgets/textfield.dart';
import 'package:flutter/material.dart';

class LoginCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            "LOGIN",
            style: Theme.of(context).textTheme.headline2,
          ),
          SizedBox(
            height: 30,
          ),
          AppTextField(
            "Username",
            Icon(Icons.account_circle_outlined),
            obscureText: false,
          ),
          SizedBox(
            height: 10,
          ),
          AppTextField(
            "Password",
            Icon(Icons.lock_outline),
            obscureText: true,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Color.fromRGBO(200, 75, 49, 1)),
                  ))
            ],
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "LOGIN",
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            width: MediaQuery.of(context).size.width * .6,
            height: 45,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
