import 'package:flutter/material.dart';
import 'package:mun/views/elements/textstyles.dart';

class NormalButton extends StatelessWidget {
  final Function function;
  final double height;
  final double width;
  final String text;
  NormalButton({this.function, this.height, this.width, this.text});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width,
        height: height,
        child: ElevatedButton(
          onPressed: () {
            function();
          },
          child: Container(
            //  width: w * 0.8,
            child: Center(
              child: Text(
                text,
                style: boldHeading.copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

InputDecoration textFieldDecoration(String text) {
  return InputDecoration(
    hintStyle: simple(18),
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
    fillColor: Colors.grey.withOpacity(0.25),
    focusColor: Colors.grey,
  );
}
