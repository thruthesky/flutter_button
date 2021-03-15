library button;

import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  Button({
    this.alignment,
    @required this.child,
    this.margin = const EdgeInsets.all(0.0),
    this.padding = const EdgeInsets.all(8.0),
    this.backgroundColor = const Color.fromARGB(255, 222, 222, 222),
    @required this.onPressed,
    this.elevation = 0.0,
    this.radius = 0.0,
  });
  final Alignment alignment;
  final Widget child;
  final Color backgroundColor;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Function onPressed;
  final double elevation;
  final double radius;
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: widget.margin,
        child: Material(
          borderRadius: BorderRadius.circular(widget.radius),
          child: Container(
            alignment: widget.alignment,
            child: widget.child,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.radius),
              color: widget.backgroundColor,
            ),
            padding: widget.padding,
          ),
          elevation: widget.elevation,
        ),
      ),
      onTap: widget.onPressed,
      behavior: HitTestBehavior.opaque,
    );
  }
}
