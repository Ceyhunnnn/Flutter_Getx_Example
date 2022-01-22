import 'package:flutter/material.dart';
import 'package:fluttergetx/controller/controller.dart';
import 'package:fluttergetx/pages/add_page.dart';
import 'package:fluttergetx/widgets/person_list_tile.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            InkWell(
              onTap: () {
                Get.to(AddPage());
              },
              child: Icon(
                Icons.event_note_rounded,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 15,
            )
          ],
          title: Text("Flutter State Management Example"),
        ),
        body: Obx(() => controller.Person.isEmpty
            ? Center(child: Text("Yukaridaki ikondan ekleme yapiniz.."))
            : ListView.builder(
          //asagi yukari sekilde hareket icin yumusak bir gecis
            physics: BouncingScrollPhysics(),
                itemCount: controller.Person.length,
                itemBuilder: (context, index) {
                  return PersonListTile(
                    index: index,
                  );
                })));
  }
}
