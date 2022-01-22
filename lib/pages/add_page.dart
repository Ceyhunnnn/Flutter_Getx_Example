import 'package:alert_dialog/alert_dialog.dart';
import "package:flutter/material.dart";
import 'package:fluttergetx/controller/controller.dart';
import 'package:get/get.dart';

class AddPage extends StatefulWidget {
  AddPage({Key? key}) : super(key: key);

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();
  TextEditingController text3 = TextEditingController();
  Controller controller = Get.find(tag: "Controller");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset:false,
      appBar: AppBar(
        title: Text("Uye bilgilerini giriniz"),
      ),
      body: SingleChildScrollView(child: textFormColumn(context)),
    );
  }

  Column textFormColumn(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: text1,
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              labelText: 'Name',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: text2,
            decoration: const InputDecoration(
              icon: Icon(Icons.location_city),
              labelText: 'City',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: text3,
            decoration: const InputDecoration(
              icon: Icon(Icons.format_list_numbered),
              labelText: 'Age',
            ),
          ),
        ),
        ElevatedButton(
            onPressed: () async {
              if (text1.value.text.isEmpty ||
                  text2.value.text.isEmpty ||
                  text3.value.text.isEmpty) {
                print("Bos");
                Get.snackbar("Dikkat", "Tum Bosluklar Doldurulmalı !!!",
                    messageText:  Text("Tum Bosluklar Doldurulmalı",style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),),
                    titleText: Text("Dikkat",style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),icon: Icon(Icons.error) );
              } else {
                controller.Add(
                    text1.value.text, text2.value.text, text3.value.text);
                Navigator.pop(context);


              }

            },
            child: Text("Kaydet")),
      ],
    );
  }
}

 void _showMaterialDialog(context) {
   showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
         title: Text("Ceyhun"),
        );
      });
}
