import 'package:fixitup_mobile/widgets/login_card.dart';
import 'package:fixitup_mobile/widgets/sigup_card.dart';
import 'package:fixitup_mobile/widgets/user_setup_card.dart';
import 'package:flutter/material.dart';

class StarterScreen extends StatefulWidget {
  static const String routeName = "/login_screen";

  @override
  _StarterScreenState createState() => _StarterScreenState();
}

class _StarterScreenState extends State<StarterScreen> {
  bool _loginState = true;
  bool _setUpState = false;
  Widget? signUpProgressWidget;

  @override
  Widget build(BuildContext context) {
    signUpProgressWidget = !_setUpState
        ? SignupCard(onClickSignUp: () {
            print("Hello World, this worked!!");
            setState(() {
              _setUpState = !_setUpState;
            });
          })
        : UserSetupCard();

    return new Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(236, 219, 186, 1),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .45,
            decoration: BoxDecoration(
                color: Color.fromRGBO(200, 75, 49, 1),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(300, 100),
                    bottomRight: Radius.elliptical(300, 100))),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * .8,
              height: MediaQuery.of(context).size.height * .8,
              child: Card(
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "FixItUp",
                        style:
                            TextStyle(fontSize: 51, fontFamily: "PasseroOne"),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      _loginState ? LoginCard() : signUpProgressWidget!,
                      TextButton(
                          onPressed: () {
                            setState(() {
                              _loginState = !_loginState;
                            });
                          },
                          child: Text(
                            _loginState ? "Create An Account" : "Login Instead",
                            style: TextStyle(
                              color: Color.fromRGBO(200, 75, 49, 1),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
