import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

Future<WidgetTester> setupTester(
    WidgetTester widgetTester, Widget widget) async {
  Localizations(
    delegates: const [
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate
    ],
    locale: const Locale('de'),
    child: widget,
  );
  await widgetTester.pumpAndSettle();
  await widgetTester.pumpWidget(widget);

  return widgetTester;
}
