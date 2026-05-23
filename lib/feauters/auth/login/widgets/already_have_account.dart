import 'package:flutter/material.dart';

import '../../../../core/theming/app_styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  final String? text;
  const AlreadyHaveAccount({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return   RichText(
      text: TextSpan(
        style: TextStyle(color: Colors.black),
        children: <TextSpan>[
          TextSpan(text: 'Already have an account yet? ', style: AppStyles.font24Black.copyWith(fontSize: 14)),
          TextSpan(text: text, style: AppStyles.font24Blue.copyWith(fontSize: 14)),
        ],
      ),
    );
  }
}
