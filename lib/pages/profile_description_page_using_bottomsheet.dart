import 'package:assign_app/components/MyCrousel.dart';
import 'package:assign_app/components/myrr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileDescription extends StatefulWidget
{

  @override
  State<ProfileDescription> createState() => _ProfileDescriptionState();
}

class _ProfileDescriptionState extends State<ProfileDescription> {

  List arr = Generater.generateYear();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.pinkAccent.shade200,
         title:const Text("Profile Description"),
       ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * .6,
                  width: MediaQuery.of(context).size.width * .98,
                  child: MyCarousel()),
            ],
          ),

        ),
    );
  }
}