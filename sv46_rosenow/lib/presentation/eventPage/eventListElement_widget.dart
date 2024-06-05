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
    return SizedBox(
      height: 150,
      width: 300,
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.all(5),
        borderOnForeground: true,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.eventHeadline,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
                Text(
                  widget.eventStartTime,
                  style: const TextStyle(
                      fontWeight: FontWeight.normal, fontSize: 12.0),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.eventLocation,
                  style: const TextStyle(
                      fontWeight: FontWeight.normal, fontSize: 10.0),
                ),
                Text(
                  widget.eventMeetingTime,
                  style: const TextStyle(
                      fontWeight: FontWeight.normal, fontSize: 10.0),
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
