import 'package:doctor_app_advanced/core/routing/app_routes.dart';
import 'package:flutter/material.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.generateRoute,

    );
  }
}
