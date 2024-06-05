// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class EventListElement_widget extends StatefulWidget {
  String eventHeadline;
  String eventLocation;
  String eventMeetingTime;
  String eventRegistratedPeople;
  String eventStartTime;

  EventListElement_widget(
      {Key? key,
      required this.eventHeadline,
      required this.eventLocation,
      required this.eventMeetingTime,
      required this.eventRegistratedPeople,
      required this.eventStartTime})
      : super(key: key);

  @override
  State<EventListElement_widget> createState() =>
      _EventListElement_widgetState();
}

class _EventListElement_widgetState extends State<EventListElement_widget> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Card(
        borderOnForeground: true,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  widget.eventHeadline,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
                Text(
                  widget.eventStartTime,
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 12.0),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  widget.eventLocation,
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 10.0),
                ),
                Text(
                  widget.eventMeetingTime,
                  style: const TextStyle(
                      fontWeight: FontWeight.normal, fontSize: 10.0),
                )
              ],
            ),
            Row(children: [
              const Text(
                '11',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 10.0),
              ),
              Card(
                child: Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
