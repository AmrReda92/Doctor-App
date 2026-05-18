import 'package:flutter/material.dart';

import '../../../../core/theming/app_styles.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return   RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(color: Colors.black),
        children: <TextSpan>[
          TextSpan(text: 'By logging you are agree to our ', style: AppStyles.font14PrivacyGrey),
          TextSpan(text: 'Terms & Conditions ', style: AppStyles.font24Black.copyWith(fontSize: 14,)),
          TextSpan(text: 'and ', style:AppStyles.font14PrivacyGrey.copyWith(height: 1.5)),
          TextSpan(text: 'PrivacyPolicy', style: AppStyles.font24Black.copyWith(fontSize: 14)),
        ],
      ),
    );
  }
}
