// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class EventListElement_widget extends StatefulWidget {
  String eventHeadline;
  String eventLocation;
  String eventMeetingTime;
  String eventRegistratedPeople;
  String eventStartTime;
  String eventDate;

  EventListElement_widget(
      {Key? key,
      required this.eventHeadline,
      required this.eventLocation,
      required this.eventMeetingTime,
      required this.eventRegistratedPeople,
      required this.eventStartTime,
      required this.eventDate})
      : super(key: key);

  @override
  State<EventListElement_widget> createState() =>
      _EventListElement_widgetState();
}

class _EventListElement_widgetState extends State<EventListElement_widget> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.all(10),
        borderOnForeground: true,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.eventHeadline,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25.0),
                  ),
                  Text(
                    widget.eventDate,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.eventLocation,
                    style: const TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 12.0),
                  ),
                  Text(
                    'Start: ${widget.eventStartTime}',
                    style: const TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 15.0),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Angemeldet: ${widget.eventRegistratedPeople}',
                  style: const TextStyle(
                      fontWeight: FontWeight.normal, fontSize: 12.0),
                ),
                Text(
                  'Treff: ${widget.eventMeetingTime}',
                  style: const TextStyle(
                      fontWeight: FontWeight.normal, fontSize: 12.0),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
