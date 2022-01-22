import 'package:flutter/cupertino.dart';
import 'package:fluttergetx/models/model.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var person = <PersonInfo>[].obs;


  void Add(String name, String city, String age) {
    person.add(PersonInfo(name, city, age));
    print("Kayit olusturuldu!");
    debugPrint("Name : "+name+" City : "+city+" Age : "+age);
    update();
  }

  void Delete(int index) {
    person.remove(person[index]);
    print("Secili kayit silindi!");
    update();
  }

}
