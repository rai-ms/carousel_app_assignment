import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserDetailsContainer extends StatelessWidget
{
  int index = 0;
  final List<String> images = [
    "https://i.pinimg.com/564x/94/e6/1b/94e61b71ef4721e6e1e20913d4ca291d--mens-fashion-india.jpg",
    "https://i.pinimg.com/1200x/cb/41/bb/cb41bbb722f2214bd319258be931a549.jpg",
    "https://thumbs.dreamstime.com/b/portrait-sam-manekshaw-displayed-centre-was-chief-indian-army-staff-indo-pak-war-first-field-marshal-156290256.jpg",
    "https://rukminim1.flixcart.com/image/850/1000/l2z26q80/poster/w/7/o/small-mangal-pandey-multicolor-photo-paper-print-poster-mangal-original-image6ghujvevxda.jpeg?q=90",
    "https://kreately.in/wp-content/uploads/2021/03/Shivaji-Maharaj-1.jpg"
  ];

  final List<String> names = [
    "Narendra Modi",
    "MS DHONI",
    "Sam ManekShaw",
    "Mangal Pandey",
    "Chhatrapati Shiva Ji"
  ];

  final List<int> ages = [
    71,
    40,
    94,
    30,
    54,
  ];

  UserDetailsContainer({super.key,this.index = 0});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20))
        ),
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(images[index]),
                  ),
                ),

                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${names[index]}, ${ages[index]}",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),),
                      Row(
                        children: [
                          Icon(Icons.circle, color: Colors.red,size: 15,),
                          Text("Online", style: TextStyle(fontWeight: FontWeight.w400),)
                        ],
                      )
                    ],
                  ),
                 Icon(Icons.check_circle, color: Colors.lightBlue,size: 25,),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.location_pin, color: Colors.green,),
                Text("5 miles"),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.add_location_sharp, color: Colors.green,),
                Text("Mumbai"),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.location_pin, color: Colors.green,),
                Text("${ages[index]} Years"),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.kitchen_rounded, color: Colors.green,),
                Text("+8"),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.flag_rounded, color: Colors.green,),
                Text("Noida Golf Course, Sector 43, Noida"),
              ],
            ),
            SizedBox(height: 30,),
            Text("Gender", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
            Container(
              height: 50,
              width: 90,
              decoration: BoxDecoration(
                border: Border.all(color:Colors.green, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(40))
              ),
              child: Center(child: Text("Male", style: TextStyle(),)),
            ),

            SizedBox(height: 30,),
            Text("My Interests", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),

            Container(
              margin: EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width * .9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 105,
                    decoration: BoxDecoration(
                        border: Border.all(color:Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.green
                    ),
                    child: Center(child: Text("Music", style: TextStyle(),)),
                  ),
                  Container(
                    height: 50,
                    width: 105,
                    decoration: BoxDecoration(
                        border: Border.all(color:Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(40))
                    ),
                    child: Center(child: Text("Food & Drinks", style: TextStyle(fontSize: 10),)),
                  ),
                  Container(
                    height: 50,
                    width: 105,
                    decoration: BoxDecoration(
                        border: Border.all(color:Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(40))
                    ),
                    child: Center(child: Text("Nature", style: TextStyle(),)),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width * .6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 105,
                    decoration: BoxDecoration(
                        border: Border.all(color:Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.green
                    ),
                    child: Center(child: Text("Philanhropist", style: TextStyle(),)),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * .038,),
                  Container(
                    height: 50,
                    width: 105,
                    decoration: BoxDecoration(
                        border: Border.all(color:Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(40))
                    ),
                    child: Center(child: Text("Travel & Places", style: TextStyle(fontSize: 11),)),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30,),
            Text("Instagram Photos", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width * .6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(images[index], height: 80, ),
                  Image.network(images[index], height: 80, ),
                  Image.network(images[index], height: 80, ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 20, bottom: 20),
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.green,
                    width: 2
                  ),
                  bottom: BorderSide(
                    color: Colors.green,
                    width: 2
                  ),
                )
              ),
              child: Column(
                children: [
                  Text("SHARE ${names[index].toUpperCase()}'S PROFILE", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                  Text("SEE WHAT A FRIEND THINKS", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10, bottom: 20),
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.green,
                    width: 2
                  ),
                )
              ),
            child: Center(child: Text("REPORT ${names[index].toUpperCase()}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),)),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * .2,right: MediaQuery.of(context).size.width * .2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1000),
                      gradient: LinearGradient(
                        colors: [Colors.red, Colors.orange],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight
                      )
                    ),
                    child: Icon(Icons.close, color: Colors.white,size: 50,),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1000),
                      gradient: LinearGradient(
                        colors: [Colors.pinkAccent, Colors.blue],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight
                      )
                    ),
                    child: Icon(Icons.star, color: Colors.white,size: 50,),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1000),
                      gradient: LinearGradient(
                        colors: [Colors.green, Colors.blue],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight
                      )
                    ),
                    child: Icon(Icons.search, color: Colors.white,size: 50,),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }


}