import 'package:fixitup_mobile/widgets/textfield.dart';
import 'package:flutter/material.dart';

class SignupCard extends StatelessWidget {
  final Function? onClickSignUp;
  const SignupCard({@required this.onClickSignUp});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            "Create An \nAccount",
            textAlign: TextAlign.center,
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
            "Email",
            Icon(Icons.email_outlined),
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
          SizedBox(
            height: 40,
          ),
          SizedBox(
            child: ElevatedButton(
              onPressed: () {
                this.onClickSignUp!();
              },
              child: Text(
                "SIGN UP",
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            width: MediaQuery.of(context).size.width * .6,
            height: 45,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "By Signing up, you agree with our \nterms of service",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
