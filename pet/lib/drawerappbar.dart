// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:pet/settings.dart';
import 'package:pet/todo/todolist.dart';
import 'package:pet/water.dart';
import 'package:pet/weather/weather.dart';

class DrawerAppBar extends StatelessWidget {
  const DrawerAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.orange[300],
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 80, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              title: const Text(
                'Список дел',
                style: TextStyle(fontSize: 25, color: Colors.indigo),
              ),
              leading: const Icon(Icons.home),
              onTap: (() {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const TodoList()));
              }),
            ),
            ListTile(
              title: const Text(
                'Счетчик воды',
                style: TextStyle(fontSize: 25, color: Colors.indigo),
              ),
              leading: const Icon(Icons.water),
              onTap: (() {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Water()));
              }),
            ),
            ListTile(
              title: const Text(
                'Погода',
                style: TextStyle(fontSize: 25, color: Colors.indigo),
              ),
              leading: const Icon(Icons.light_mode),
              onTap: (() {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const WeatherScreen()));
              }),
            ),
            ListTile(
              title: const Text(
                'Настройки',
                style: TextStyle(fontSize: 25, color: Colors.indigo),
              ),
              leading: const Icon(Icons.settings),
              onTap: (() {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Settings()));
              }),
            ),
            // ListTile(
            //   title: const Text(
            //     'shared',
            //     style: TextStyle(fontSize: 25, color: Colors.indigo),
            //   ),
            //   leading: const Icon(Icons.settings),
            //   onTap: (() {
            //     Navigator.of(context).push(
            //         MaterialPageRoute(builder: (context) => const Shared()));
            //   }),
            // ),
          ],
        ),
      ),
    );
  }
}