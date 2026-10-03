import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pregnancy_project/core/features/splash/presentation/views/splash_view.dart';
import 'package:pregnancy_project/core/helper_function/on_generate_routes.dart';
import 'package:pregnancy_project/generated/l10n.dart';


void main() {
  runApp(const PregnancyApp());
}

class PregnancyApp extends StatelessWidget {
  const PregnancyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (context, child) =>
      MaterialApp(
        localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            locale: Locale('ar'),
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        onGenerateRoute: onGenerateRoutes,
        initialRoute: SplashView.routeName,
      ),
    );
  }
}
