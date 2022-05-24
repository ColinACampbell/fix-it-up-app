import 'package:fixitup_mobile/widgets/textfield.dart';
import 'package:flutter/material.dart';

class UserHomeScreen extends StatelessWidget {
  static const routeName = "user_home_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color.fromRGBO(200, 75, 49, 1),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: AppTextField("Search Project", Icon(Icons.ac_unit),
                    obscureText: false),
              ),
              Spacer(),
              Text(
                "Fixes For Me",
                style: Theme.of(context).textTheme.headline3,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .82,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
              )
            ],
          )
        ],
      ),
    );
  }
}
