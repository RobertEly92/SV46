import 'package:flutter_test/flutter_test.dart';
import 'package:sv46_rosenow/presentation/eventPage/eventListElement_widget.dart';
import 'widget_tests_setup.dart';

void main() {
  testWidgets('test if all elements are visible', (WidgetTester tester) async {
    
    //TODO chekcn warum setuptester lokalization nicht mehr ltr problem löst
    await setupTester(tester, const EventListElement_widget());


    //TODO gegen variablen ersetzen
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
