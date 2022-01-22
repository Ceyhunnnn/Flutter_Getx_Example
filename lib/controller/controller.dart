import 'package:flutter/cupertino.dart';
import 'package:fluttergetx/models/model.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  RxList<PersonInfo> Person = <PersonInfo>[].obs;

  void Add(String text1, String text2, String text3) {
    Person.add(PersonInfo(text1, text2, text3));
    print("Kayit olusturuldu!");
    debugPrint("Name : "+text1+" City : "+text2+" Age : "+text3);

    print(Person.length.toString());
    update();
  }

  void Delete(int index) {
    Person.remove(Person[index]);
    print("Secili kayit silindi!");

    update();
  }


}
