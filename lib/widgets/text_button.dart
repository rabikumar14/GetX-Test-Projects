import 'package:flutter/material.dart';

class TextWithTextButton extends StatelessWidget {
  const TextWithTextButton({
    Key? key,
    required this.text,
    required this.textButtonText,
    required this.onPressed,
  }) : super(key: key);

  final String text, textButtonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: height * 0.005),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            TextButton(
              child: Text(textButtonText),
              onPressed: onPressed,
              style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                    (states) => Colors.transparent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
