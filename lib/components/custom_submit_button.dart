import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget
{
  String text = "Sign Up";
  Color color1 = Color.fromRGBO(6, 40, 63, 1.0);
  Color color2 = Colors.blue;
  final VoidCallback callback;

  CustomButton({super.key,required this.text,required this.color1,required this.color2,required this.callback});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Center(
        child: Container(
          height: 50,
          margin: const EdgeInsets.only(top: 20, bottom: 20),
          width: MediaQuery.of(context).size.width * .8,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [color1, color2]),
              borderRadius: BorderRadius.circular(200)
          ),
          child: Center(child: Text("${text}", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 22),)),
        ),
      ),
    );
  }

}