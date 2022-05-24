import 'package:fixitup_mobile/screens/user_home_screen.dart';
import 'package:fixitup_mobile/widgets/textfield.dart';
import 'package:flutter/material.dart';

class UserSetupCard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            "Tell About \nYourself",
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * .4,
            height: MediaQuery.of(context).size.width * .4,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Color.fromRGBO(45, 66, 99, 1),
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    color: Color.fromRGBO(200, 75, 49, 1),
                    size: MediaQuery.of(context).textScaleFactor * 100,
                  ),
                  Text(
                    "Click To Upload Photo",
                    style: TextStyle(color: Color.fromRGBO(200, 75, 49, 1)),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          AppTextField(
            "Full Name",
            Icon(Icons.account_circle_outlined),
            obscureText: false,
          ),
          SizedBox(
            height: 10,
          ),
          AppTextField(
            "Country / Location",
            Icon(Icons.email_outlined),
            obscureText: false,
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            child: ElevatedButton(
              onPressed: () {
                print(UserHomeScreen.routeName);
                Navigator.pushNamed(context, UserHomeScreen.routeName);
              },
              child: Text(
                "GET STARTED",
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
