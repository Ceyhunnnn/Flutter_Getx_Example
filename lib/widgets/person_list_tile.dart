import "package:flutter/material.dart";
import 'package:fluttergetx/controller/controller.dart';
import 'package:fluttergetx/models/model.dart';
import 'package:get/get.dart';

class PersonListTile extends StatelessWidget {
  Controller controller = Get.put(Controller());
  int index;
  PersonListTile({required this.index});
  @override
  Widget build(BuildContext context) {
    return Obx(() => Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(
                controller.Person[index].name.toString(),
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text(controller.Person[this.index].city),
              trailing: GestureDetector(
                  child: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  onTap: () {
                    controller.Delete(index);
                  }),
              leading: Text(
                controller.Person[this.index].age,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ));
  }
}
