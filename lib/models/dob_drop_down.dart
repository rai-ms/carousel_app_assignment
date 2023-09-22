import 'package:flutter/material.dart';

import '../components/myrr.dart';
class CustomDOBDropDown extends StatefulWidget {
  String title;
  List<String> dropdownOptions = [];

  CustomDOBDropDown({super.key,required this.title, required this.dropdownOptions});

  @override
  _CustomDOBDropDownState createState() => _CustomDOBDropDownState();
}

class _CustomDOBDropDownState extends State<CustomDOBDropDown> {
  String selectedOption = "Select";

  String? validator(String? value)
  {
    if(value == "Select")
      {
        return "Please select dates";
      }
    return null;
  }



  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 60,
      child: Container(
        width: ( widget.title == "D" || widget.title == "M")? 70:100,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.grey, width: 1)
        ),
        child: Padding(
          padding: EdgeInsets.all(4),
          child: Center(
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration.collapsed(hintText: ''),
              validator: validator,
              value: selectedOption,
              onChanged: (newValue)
              {
                setState((){
                  selectedOption = newValue!;
                });
              },
              isExpanded: true,
              isDense: true,
              icon: Icon(null),
              onTap: ()
              {
                setState(() {

                });
              },
              items: widget.dropdownOptions.map((options){
                return DropdownMenuItem<String>(
                  value: options,
                  child: Text(options, style: TextStyle(color: Colors.black54),),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}

