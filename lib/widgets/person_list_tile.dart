import "package:flutter/material.dart";
import 'package:fluttergetx/controller/controller.dart';
import 'package:fluttergetx/models/model.dart';
import 'package:get/get.dart';

class PersonListTile extends StatelessWidget {
  final Controller _controller = Get.find(tag:"Controller");
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
                _controller.person[index].name.toString(),
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text(_controller.person[this.index].city ?? ""),
              trailing: GestureDetector(

                  child: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  onTap: () {
                    _controller.Delete(index);
                  }),
              leading: Text(
                _controller.person[this.index].age ?? "",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ));
  }
}
