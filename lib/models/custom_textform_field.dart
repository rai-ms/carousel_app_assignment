import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldModel extends StatelessWidget
{
  TextEditingController controller = TextEditingController();
  String title = "Full Name";
  String hintText = "Enter Name";
  CustomTextFormFieldModel({super.key, required this.title,  required this.hintText});

  String? validator(String? val)
  {

    if(title == "Full Name") {
      return usernameValidator(val);
    } else if(title == "Email") {
      return emailidValidator(val);
    } else if(title == "Phone Number") {
      return mobileNoValidator(val);
    }
    return null;
  }


  String? emailidValidator(String? val)
  {
    if(val!.length <= 5 )
    {
      return "Enter valid mail!";
    }
    final bool emailValid =
    RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(val!);
    if(!emailValid)
    {
      return "Not a valid mail!";
    }
    else
    {
      int atIndex = 0;
      int dotIndex = 0;
      for(int i = 0; i < val!.length; ++i)
        {
          if(val[i] == "@")
            {
              atIndex = i;
            }
          if(val[i] == "."){
            dotIndex = i;
          }
        }
      if(atIndex == 0 || dotIndex == 0 || (atIndex - dotIndex) > 0)
        {
          return "Enter valid mail which contains @ and .";
        }
    }
    return null;
  }

  String? usernameValidator(String? val)
  {

    if(val!.isEmpty)
      {
        return "Name is Required";
      }
    return null;
  }

  String? mobileNoValidator(String? val)
  {

    if(val!.length != 10)
      {
        return "Mobile no must be in 10 digits";
      }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 108,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      width: MediaQuery.of(context).size.width * .9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.w800,
              fontSize: 16),
          ),
          const SizedBox(height: 5,),
          Container(
            height: 80,
            child: TextFormField(
              controller: controller,
              validator:(value) {
                return validator(value);
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.grey),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }

}