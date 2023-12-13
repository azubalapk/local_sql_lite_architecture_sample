import 'package:local_sql_lite_architecture_sample/models/Dog.dart';

import 'DogRepository.dart';
class DogRepositoryImpl implements DogRepository {
  @override
  void deleteDog(Dog dog) async {
    // TODO: implement deleteDog
  }

  @override
  Future<List<Dog>>? dogs() async {

    
    // TODO: implement dogs
    throw UnimplementedError();
  }

  @override
  void insertDog(Dog dog) async {
    // TODO: implement insertDog
  }

  @override
  void updateDog(Dog dog) {
    // TODO: implement updateDog
  }


}