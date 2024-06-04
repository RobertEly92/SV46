import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('test if all elements are visible', (WidgetTester tester) async {
    await tester.pumpWidget(const EventListElement_widget());

    // finders
    final headline = find.text('Headline');
    final time = find.text('18:30');
    final location = find.text('Am Fettloch 8');
    final registratedPeople = find.text('11');

    //check if state is correct
    expect(headline, findsOneWidget);
    expect(time, findsOneWidget);
    expect(location, findsOneWidget);
    expect(registratedPeople, findsOneWidget);
  });
}
