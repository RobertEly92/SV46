import 'package:flutter_test/flutter_test.dart';
import 'package:sv46_rosenow/presentation/eventPage/eventListElement_widget.dart';
import 'widget_tests_setup.dart';

void main() {
  testWidgets('test if all elements are visible', (WidgetTester tester) async {
    const String t_headline = 'Headline';
    const String t_startTime = '18:30';
    const String t_location = 'Am Fettloch 8';
    const String t_registratedPeople = '11';
    const String t_meetingTime = '18:20';

    //TODO chekcn warum setuptester lokalization nicht mehr ltr problem löst
    await setupTester(
        tester,
         EventListElement_widget(
            eventHeadline: t_headline,
            eventStartTime: t_startTime,
            eventLocation: t_location,
            eventRegistratedPeople: t_registratedPeople,
            eventMeetingTime: t_meetingTime));

    //TODO gegen variablen ersetzen
    // finders
    final headline = find.text(t_headline);
    final time = find.text(t_startTime);
    final location = find.text(t_location);
    final registratedPeople = find.text(t_registratedPeople);
    final meetingTime = find.text(t_meetingTime);

    //check if state is correct
    expect(headline, findsOneWidget);
    expect(time, findsOneWidget);
    expect(location, findsOneWidget);
    expect(registratedPeople, findsOneWidget);
  });
}
