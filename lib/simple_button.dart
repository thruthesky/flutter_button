library button;

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  Button({
    this.alignment,
    this.backgroundColor = const Color.fromARGB(255, 222, 222, 222),
    @required this.child,
    this.elevation = 0.0,
    this.loader = false,
    this.margin = const EdgeInsets.all(0.0),
    @required this.onPressed,
    this.padding = const EdgeInsets.all(8.0),
    this.radius = 0.0,
    this.spinnerColor = Colors.black,
    this.spinnerSize = 16.0,
  });
  final Alignment alignment;
  final Widget child;
  final Color backgroundColor;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Function onPressed;
  final double elevation;
  final double radius;
  final bool loader;

  /// The [spinnerColor] works only for Android. For iOS, you may change theme data.
  final Color spinnerColor;
  final double spinnerSize;
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
            child: widget.loader
                ? SizedBox(
                    width: widget.spinnerSize,
                    height: widget.spinnerSize,
                    child: Platform.isAndroid
                        ? CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(widget.spinnerColor),
                          )
                        : CupertinoActivityIndicator(),
                  )
                : widget.child,
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
