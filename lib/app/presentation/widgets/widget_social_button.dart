import 'package:flutter/material.dart';

class WidgetSocialButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Function()? onPressed;
  const WidgetSocialButton({
    required this.icon,
    required this.color,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            primary: color,
            padding: const EdgeInsets.all(10),
            minimumSize: const Size(20, 20)),
        child: Icon(icon));
  }
}
