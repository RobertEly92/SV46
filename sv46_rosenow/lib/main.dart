import 'package:flutter/material.dart';
import 'package:sv46_rosenow/presentation/eventPage/eventListElement_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Center(
                child: EventListElement_widget(
              eventHeadline: 'Training',
              eventLocation: 'Am Fettloch 8, Rosenow',
              eventStartTime: '18:30',
              eventMeetingTime: '18:25',
              eventRegistratedPeople: '11',
              eventDate: '01.01.2024',
            )),
              Center(
                child: EventListElement_widget(
              eventHeadline: 'Training',
              eventLocation: 'Am Fettloch 8, Rosenow',
              eventStartTime: '18:30',
              eventMeetingTime: '18:25',
              eventRegistratedPeople: '11',
              eventDate: '05.01.2024',
            
            )),
              Center(
                child: EventListElement_widget(
              eventHeadline: 'Training',
              eventLocation: 'Am Fettloch 8, Rosenow',
              eventStartTime: '18:30',
              eventMeetingTime: '18:25',
              eventRegistratedPeople: '11',
              eventDate: '10.01.2024',
            )),
          ],
        ),
      ),
    );
  }
}
