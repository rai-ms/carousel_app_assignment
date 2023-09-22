import 'package:assign_app/components/custom_submit_button.dart';
import 'package:assign_app/main.dart';
import 'package:assign_app/models/dob_drop_down.dart';
import 'package:assign_app/components/myrr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/custom_image.dart';

import '../components/custom_toast.dart';
import '../models/custom_textform_field.dart';
import '../models/drop_down_with_validation.dart';

class SetUpProfile extends StatefulWidget
{

  @override
  State<SetUpProfile> createState() => _SetUpProfileState();
}

class _SetUpProfileState extends State<SetUpProfile> {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  var title = ["Full Name", "Email", "Phone Number", "Gender", "Location", "Handicap", "Nationality", "Home Golf Course (optional)"];

  var hint = ["Enter Name", "Enter Email", "Phone Number", "Male", "Select", "0", "Select", "Enter home golf course", ""];
  var location = ["Select","Kolkata", "Delhi", "Chennai", "Mumbai", "Ballia"];
  var handicap = ["Select","0", "1","3", "4","5", "6","7", "8","9", "10","11","12","13"];
  var nationality = ["Select","India", "Russia","UAE","USA", "UK"];
  var gender = ["Select","Male", "Female"];
  var days = Generater.generateDate();
  var months = Generater.generateMonth();
  var years = Generater.generateYear();
  var isDropDown = [false, false, false, true, true, true, true, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 30, right: 30,top: 80),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Setup Your Profile", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),),
              Center(child: CustomImageContainer()),
              Form(
                key: key,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextFormFieldModel(title: title[0], hintText: hint[0]),
                    CustomTextFormFieldModel(title: title[1], hintText: hint[1]),
                    CustomTextFormFieldModel(title: title[2], hintText: hint[2]),
                    ValidatorDropDown(title: title[3], dropdownOptions: gender, widthDropDown: MediaQuery.of(context).size.width * .89),
                    ValidatorDropDown(title: title[4], dropdownOptions: location, widthDropDown: MediaQuery.of(context).size.width * .89),
                    ValidatorDropDown(title: title[5], dropdownOptions: handicap, widthDropDown: 120),
                    Text("DOB", style: const TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w800,
                        fontSize: 16),
                    ),
                    Row(
                      children: [
                        CustomDOBDropDown(title: "D", dropdownOptions: days,),
                        SizedBox(width: 20,),
                        CustomDOBDropDown(title: "M", dropdownOptions: months,),
                        SizedBox(width: 20,),
                        CustomDOBDropDown(title: "", dropdownOptions: years,),
                      ],
                    ),
                    SizedBox(height: 30,),
                    ValidatorDropDown(title: title[6], dropdownOptions: nationality, widthDropDown: MediaQuery.of(context).size.width * .89),
                    CustomTextFormFieldModel(title: title[7], hintText: hint[7]),
                  ],
                ),
              ),
              CustomButton(text: "CONTINUE", color1: Colors.greenAccent, color2: Colors.blueAccent, callback: validate,)
            ],
          ),
        ),
      ),
    );
  }

  void validate()
  {
    if(key.currentState!.validate())
      {
        CustomToast(message: "Login Successful!", iconData: Icons.accessibility_new, iconColor: Colors.lightBlueAccent, context: context);
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(title: "Home Page")));

      }
  }
}