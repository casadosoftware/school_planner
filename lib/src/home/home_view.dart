import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_planner/src/home/components/task_list_tile.dart';
import 'package:school_planner/src/home/components/week_day_box.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          'assets/icons/logo.svg',
          height: 40,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          SizedBox(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(7, (index) => WeekDayBox(index)),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Atividades atrasadas',
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(height: 10),
          const TaskListTile(
            title: 'Prova',
            subtitle: 'Algoritmos 2',
            type: TaskType.test,
            alert: true,
          ),
          const Divider(),
          const TaskListTile(
            title: 'Trabalho de Redes Neurais',
            subtitle: 'Inteligência Artificial',
            type: TaskType.homework,
            alert: true,
          ),
          const SizedBox(height: 30),
          Text(
            'Próximas atividades',
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(height: 10),
          const TaskListTile(
            title: 'Reunião de Projeto',
            subtitle: 'Aplicativos Móveis',
            type: TaskType.meeting,
          ),
          const Divider(),
          const TaskListTile(
            title: 'Prova 2',
            subtitle: 'Algoritmos 2',
            type: TaskType.test,
          ),
          const Divider(),
          const TaskListTile(
            title: 'Prova 2',
            subtitle: 'Algoritmos 2',
            type: TaskType.test,
          ),
        ],
      ),
    );
  }
}