import 'package:flutter/material.dart';
import '../../models/tache.dart';
import '../../views/detail/detail.dart';
import '../../data/data.dart';


class Home extends StatelessWidget {
  Home({super.key});

  final List<Tache> taches = Data.creerTaches();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste de tâches'),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: taches.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(taches[index].titre),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Detail(tache: taches[index]),
                ),
              );
            },
          );
        },
      )
    );
  }
}