import 'package:local_sql_lite_architecture_sample/models/Dog.dart';

interface class DogRepository {
  void insertDog(Dog dog){}

  Future<List<Dog>>? dogs(){}

  void updateDog(Dog dog){}

  void deleteDog(Dog dog){}
}
