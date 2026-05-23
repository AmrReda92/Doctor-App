import 'package:doctor_app_advanced/core/networking/dio_helper.dart';
import 'package:flutter/material.dart';

import 'doc_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  runApp(const DocApp());
}


