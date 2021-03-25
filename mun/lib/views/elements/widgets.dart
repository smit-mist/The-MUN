import 'package:flutter/material.dart';
import 'package:mun/views/elements/constants.dart';
import 'package:mun/views/elements/textstyles.dart';

class NormalButton extends StatelessWidget {
  final Function function;
  final double height;
  final double width;
  final String text;
  final Color textColor;
  final Color color;
  NormalButton(
      {this.function,
      this.height,
      this.width,
      this.text,
      this.color,
      this.textColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: () {
          function();
        },
        child: Container(
          //  width: w * 0.8,
          width: width,
          color: color ?? kBlueShade,
          child: Center(
            child: Text(
              text,
              style: boldHeading.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.w300,
                  fontSize: 18.0),
            ),
          ),
        ),
      ),
    );
  }
}

InputDecoration textFieldDecoration(String text) {
  return InputDecoration(
    hintStyle: simple(14).copyWith(color: Colors.grey),
    hintText: text,
    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(3),
      borderSide: BorderSide(
        width: 0,
        style: BorderStyle.none,
      ),
    ),
    filled: true,
    fillColor: Colors.grey.withOpacity(0.1),
    focusColor: Colors.grey,
  );
}
