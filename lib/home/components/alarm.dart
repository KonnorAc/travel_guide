import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Alarm());
}

class Alarm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Schedule',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SchedulePage(),
    );
  }
}

class SchedulePage extends StatelessWidget {
  final List<ScheduleItem> schedule = [
    ScheduleItem(
        time: "07:00 - 08:00",
        task: "Просыпание и зарядка\n- Утренние упражнения\n- Душ\n- Завтрак"),
    ScheduleItem(
        time: "08:00 - 09:00",
        task: "Утренние рутинные задачи\n- Проверка почты\n- Планирование дня"),
    ScheduleItem(
        time: "09:00 - 12:00",
        task: "Рабочие задачи / Учеба\n- Основные задачи на утро"),
    ScheduleItem(
        time: "12:00 - 13:00",
        task: "Обеденный перерыв\n- Обед\n- Отдых\n- Прогулка"),
    ScheduleItem(
        time: "13:00 - 15:00",
        task: "Работа / Учеба\n- Продолжение выполнения задач"),
    ScheduleItem(
        time: "15:00 - 15:30",
        task: "Кофе-брейк\n- Перекус\n- Небольшой отдых"),
    ScheduleItem(
        time: "15:30 - 18:00",
        task: "Работа / Учеба\n- Продолжение выполнения задач"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Расписание на день'),
      ),
      body: ListView.builder(
        itemCount: schedule.length,
        itemBuilder: (context, index) {
          final item = schedule[index];
          return ListTile(
            title: Text(item.time),
            subtitle: Text(item.task),
          );
        },
      ),
    );
  }
}

class ScheduleItem {
  final String time;
  final String task;

  ScheduleItem({required this.time, required this.task});
}
