import 'package:flutter/cupertino.dart';
import 'package:fluttergetx/models/model.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var Person = <PersonInfo>[].obs;

  void Add(String name, String city, String age) {
    Person.add(PersonInfo(name, city, age));
    print("Kayit olusturuldu!");
    debugPrint("Name : "+name+" City : "+city+" Age : "+age);

    update();
  }

  void Delete(int index) {
    Person.remove(Person[index]);
    print("Secili kayit silindi!");

    update();
  }


}
