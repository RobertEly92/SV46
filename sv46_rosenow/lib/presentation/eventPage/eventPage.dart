import 'package:flutter/material.dart';
import 'package:sv46_rosenow/presentation/eventPage/eventListElement_widget.dart';

class EventPage extends StatefulWidget {
  final List<EventListElement_widget> events;
  const EventPage({super.key, required this.events});

  @override
  State<EventPage> createState() => _EventpageState();
}

class _EventpageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: widget.events.length,
        itemBuilder: (BuildContext context, int index){
          return widget.events[index];
        },
      ),
    );
  }
}