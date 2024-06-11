import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sv46_rosenow/presentation/eventPage/eventListElement_widget.dart';
import 'package:sv46_rosenow/presentation/eventPage/eventPage.dart';

import '../fixtures/fixture_reader.dart';

void main() {
  Widget buildTestableWidget(Widget widget) {
    return MediaQuery(
        data: const MediaQueryData(), child: MaterialApp(home: widget));
  }

  testWidgets('test if list shows evenets', (WidgetTester tester) async {
    List<EventListElement_widget> events = [];
    for (var element in fixture('events.json')) {
  events.add(element);      
    }
    await tester.pumpWidget(EventPage(events: fixture('events.json'),));

    //finders
    final EventListElement_widget t_event = EventListElement_widget(
        eventHeadline: 'eventHeadline',
        eventLocation: 'eventLocation',
        eventMeetingTime: 'eventMeetingTime',
        eventRegistratedPeople: 'eventRegistratedPeople',
        eventStartTime: 'eventStartTime',
        eventDate: 'eventDate');
  });
}
