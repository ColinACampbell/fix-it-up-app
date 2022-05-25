import 'package:flutter/material.dart';

class FixListCard extends StatefulWidget {
  @override
  _FixListCardState createState() => _FixListCardState();
}

class _FixListCardState extends State<FixListCard> {
  Widget buildTextContainer(String text, double height) {
    return Flexible(
      child: Container(
        margin: EdgeInsets.all(2),
        height: height,
        color: Colors.amber,
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      // Actual Card
      child: Card(
        // Enable border radius
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                width: MediaQuery.of(context).size.width,
                height: 108,
                child: Row(
                  children: [
                    Container(
                      width: 75,
                      height: 75,
                      color: Colors.green,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildTextContainer("Phone needs to be fixed", 20),
                          buildTextContainer("By @colinfumaster", 20),
                          buildTextContainer(
                              "The phone screen is cracked and \nI can't see anything",
                              100),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 0,
                color: Colors.red,
              )
            ],
          ),
          height: 108,
        ),
      ),
    );
  }
}
