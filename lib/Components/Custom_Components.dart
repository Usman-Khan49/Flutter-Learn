// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Custom_button extends StatefulWidget {
  const Custom_button(
      {super.key,
      required this.Button_color,
      this.button_Icon,
      required this.title,
      this.text_color = Colors.white,
      this.fontsize,
      this.padding = 10,
      this.onTap});

  final IconData? button_Icon;
  final String title;
  final Color Button_color;
  final Color? text_color;
  final double? fontsize;
  final double padding;
  final void Function()? onTap;

  @override
  State<Custom_button> createState() => _Custom_buttonState();
}

class _Custom_buttonState extends State<Custom_button> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Container(
          width: 320,
          height: 60,
          decoration: BoxDecoration(
            color: widget.Button_color,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: widget.padding),
                  child: Icon(
                    widget.button_Icon,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: Text(
                    widget.title,
                    style: TextStyle(
                        color: widget.text_color, fontSize: widget.fontsize),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Formfield extends StatelessWidget {
  const Formfield(
      {super.key,
      required this.Controller,
      required this.Label,
      this.obscure = false});

  final TextEditingController Controller;
  final String Label;
  final bool obscure;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextField(
        obscureText: obscure,
        autofocus: true,
        controller: Controller,
        decoration: InputDecoration(
          labelText: Label,
          border: UnderlineInputBorder(
            borderSide:
                BorderSide(color: Colors.black, style: BorderStyle.solid),
          ),
          constraints: BoxConstraints.tightFor(width: 300, height: 50),
        ),
      ),
    );
  }
}
