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

  testWidgets('test if list shows events', (WidgetTester tester) async {
    List<EventListElement_widget> events = [
      EventListElement_widget(
          eventHeadline: "Training",
          eventLocation: "Am Fettloch 8, Rosenow",
          eventMeetingTime: "18:20",
          eventRegistratedPeople: "11",
          eventStartTime: "18:30",
          eventDate: "03.06.2024"),
      EventListElement_widget(
          eventHeadline: "Training",
          eventLocation: "Am Fettloch 8, Rosenow",
          eventMeetingTime: "18:20",
          eventRegistratedPeople: "11",
          eventStartTime: "18:30",
          eventDate: "10.06.2024"),
    ];
    await tester.pumpWidget(buildTestableWidget(EventPage(
      events: events,
    )));

    //finders
    List<Widget> list = tester.widgetList(find.byType(EventListElement_widget)).toList();

    //verify
    expect(list.length, 2);
  });
}
