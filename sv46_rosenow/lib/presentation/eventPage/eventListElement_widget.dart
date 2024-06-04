// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class EventListElement_widget extends StatefulWidget {
  const EventListElement_widget({Key? key}) : super(key: key);

  @override
  State<EventListElement_widget> createState() =>
      _EventListElement_widgetState();
}

class _EventListElement_widgetState extends State<EventListElement_widget> {
bool? isChecked =false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Card(
          borderOnForeground: true,
          child: Column(
            
            children: [
              const Row(
                children: [
                  Text(
                    'Headline',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                  Text(
                    '18:30',
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12.0),
                  )
                ],
              ),
              Row(
                children: [
                  const Text(
                    'Am Fettloch 8',
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
                ],
              ),
              const Row(
                  children: [
                    Text(
                      '11',
                      style:
                          TextStyle(fontWeight: FontWeight.normal, fontSize: 10.0),
                    ),
                  ])
            ],
          ),
        ),
    );
  }
}
