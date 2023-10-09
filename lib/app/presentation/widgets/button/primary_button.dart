import 'package:flutter/material.dart';
import 'package:quiz_app/app/presentation/constants/colors.dart';
import 'package:quiz_app/app/presentation/constants/text_style.dart';
import 'package:quiz_app/app/presentation/helpers/ui_helper.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Widget? icon;

  const PrimaryButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.icon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: cTextMed,
      child: MaterialButton(
        color: cColorGreen,
        disabledColor: const Color(0xffbababa),
        splashColor: cColorGreen2,
        focusElevation: 0,
        hoverElevation: 0,
        highlightColor: cColorGreen2,
        highlightElevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36)),
        padding: padding(horizontal: 24, vertical: 12),
        elevation: 0,
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: FittedBox(
                child: Text(
                  text,
                  style: cTextAccentMedSM,
                ),
              ),
            ),
            if (icon != null)
              Container(
                margin: const EdgeInsets.only(left: 16),
                child: icon,
              ),
          ],
        ),
      ),
    );
  }
}
