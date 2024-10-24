import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_cart/features/personalization/screens/splash_screen.dart';
import 'package:quick_cart/utils/constants/text_strings.dart';
import 'package:quick_cart/utils/theme/theme.dart';

class QCApp extends StatelessWidget {
  const QCApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: QCTexts.appName,
      themeMode: ThemeMode.system,
      theme: QCAppTheme.lightTheme,
      darkTheme: QCAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // initialBinding: GeneralBindings(),
      home: SplashScreen(),
    );
  }
}
