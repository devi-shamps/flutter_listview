import '/models/tache.dart';

class Data {

  static List<Tache> creerTaches() {
    return List.generate(
      20,
          (i) => Tache(
        'Tâche $i',
        'Une description de la tâche #$i',
      ),
    );
  }

}