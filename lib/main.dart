import 'package:flutter/material.dart';
import 'package:local_sql_lite_architecture_sample/database/DogDatabase.dart';
import 'package:local_sql_lite_architecture_sample/database/dao/DogDao.dart';
import 'package:local_sql_lite_architecture_sample/models/Dog.dart';

void main() async {
  runApp(const MainApp());

  DogDao dogDao = DogDao();

  var fido = const Dog(
    id: 0,
    name: 'Fido',
    age: 35,
  );

  await dogDao.insertDog(fido);

  print(await dogDao.dogs());

  // Update Fido's age and save it to the database.
  fido = Dog(
    id: fido.id,
    name: fido.name,
    age: fido.age + 7,
  );
  await dogDao.updateDog(fido);

  // Print the updated results.
  print(await dogDao.dogs()); // Prints Fido with age 42.

  // Delete Fido from the database.
  await dogDao.deleteDog(fido.id);

  // Print the list of dogs (empty).
  print(await dogDao.dogs());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
