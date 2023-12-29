import 'package:flutter/material.dart';
import 'package:testing/design/dimensions.dart';
import 'package:testing/design/widgets/accent_button.dart';

class ErrorDialog extends StatelessWidget {
  final String description;
  const ErrorDialog({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius8)),
      child: Padding(
        padding: const EdgeInsets.all(padding16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Oops...',
              style: TextStyle(
                  fontSize: fontSize24,
                  fontWeight: FontWeight.w600
              ),
            ),
            const SizedBox(height: height8,),
            Text(
              description,
              style: const TextStyle(
                  fontSize: fontSize16,
                  fontWeight: FontWeight.w400
              ),
            ),
            const SizedBox(height: height20,),
            Center(
              child: AccentButton(title: 'OK', onTap: () {
                Navigator.pop(context);
              }),
            )
          ],
        ),
      ),

    );
  }
}
