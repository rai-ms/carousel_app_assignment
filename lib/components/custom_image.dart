import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 15),
        width: 110,
        height: 110,
        child: Stack(children: [
          CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(
                "assets/images/mangal_pandey.webp",
              )),
          Positioned(
            bottom: 1,
            right: 1,
            child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.green, Color.fromRGBO(6, 40, 63, 1.0)])),
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                )),
          )
        ]),

    );
  }
}
