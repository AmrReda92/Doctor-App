import 'package:doctor_app_advanced/core/networking/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'doc_app.dart';

void main() async{
  await ScreenUtil.ensureScreenSize();
   WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  runApp(const DocApp());
}


