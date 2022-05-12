import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String content;
  final Color background;
  final VoidCallback? onPressed;

  const CustomButton({
    Key? key,
    required this.content,
    required this.background,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 100,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            primary: background,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            )),
        child: Text(
          content,
          style: const TextStyle(color: Colors.black87, fontSize: 16),
        ),
      ),
    );
  }
}
