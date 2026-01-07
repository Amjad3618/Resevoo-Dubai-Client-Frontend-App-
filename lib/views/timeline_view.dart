import 'package:flutter/material.dart';

class TimeLineview extends StatefulWidget {
  const TimeLineview({super.key});

  @override
  State<TimeLineview> createState() => _TimeLineviewState();
}

class _TimeLineviewState extends State<TimeLineview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // or any color you want
      appBar: AppBar(
        title: const Text('Timeline'),
      ),
      body: const Center(
        child: Text('Timeline Screen'),
      ),
    );
  }
}
