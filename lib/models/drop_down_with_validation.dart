import 'package:flutter/material.dart';
class ValidatorDropDown extends StatefulWidget {
  String title;
  List<String> dropdownOptions = [];
  double widthDropDown;
  ValidatorDropDown({super.key,required this.title, required this.dropdownOptions, this.widthDropDown = 90});

  @override
  _ValidatorDropDownState createState() => _ValidatorDropDownState();
}

class _ValidatorDropDownState extends State<ValidatorDropDown> {
  String selectedOption = "Select";

  String? validator(String? value)
  {
    if(value == "Select")
    {
      return "Select Value";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 120,
      width: widget.widthDropDown,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title, style: const TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.w800,
              fontSize: 16
          ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.grey, width: 1)
            ),
            child: Padding(
              padding: EdgeInsets.all(4),
              child: Center(
                child: DropdownButtonFormField<String>
                  (
                  validator: validator,
                  decoration: InputDecoration.collapsed(hintText: ""),
                  alignment: Alignment.center,
                  value: selectedOption,
                  onChanged: (newValue)
                  {
                    setState((){
                    selectedOption = newValue!;
                    });
                  },
                  isExpanded: true,
                  isDense: true,
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
        ],
      ),
    );
  }
}

