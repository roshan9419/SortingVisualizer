import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sorting_visualization/ui/ui_theme.dart';

class NeumorphicRectButton extends StatelessWidget {
  final String labelText;
  final Color btnColor;
  final double btnWidth;
  final double btnHeight;
  final double btnRadius;
  final Widget child;
  final Function onTap;

  const NeumorphicRectButton(
      {Key key,
      this.labelText,
      this.btnColor,
      this.btnWidth,
      this.btnHeight,
      this.btnRadius,
      this.child,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(btnRadius ?? 5),
      child: Container(
        width: btnWidth ?? 50,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: btnColor ?? darkBtnColor2,
            borderRadius: BorderRadius.circular(btnRadius ?? 5),
            boxShadow: [
              BoxShadow(
                  color: shadowColor1, offset: Offset(4, 4), blurRadius: 12),
              BoxShadow(
                  color: Color(0xff3e3e40),
                  offset: Offset(-4, -4),
                  blurRadius: 10),
            ]),
        child: child == null
            ? Text((labelText != null && labelText.isNotEmpty) ? labelText : "",
                style: Theme.of(context).textTheme.subtitle2)
            : child,
      ),
    );
  }
}