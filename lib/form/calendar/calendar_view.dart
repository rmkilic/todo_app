import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class CalendarView extends StatefulWidget {
  const CalendarView({super.key});

  @override
  State<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Column(
        children: [
          
          Expanded(child: calendar())
        ],
      ),
    );
  }

  Widget calendar()
  {
    return const SizedBox();
  }

}