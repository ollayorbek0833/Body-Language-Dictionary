import 'package:body_movement_dictionary/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{
  await Hive.initFlutter();
  var box = await Hive.openBox('myBox');
  runApp(const MyMaterial(),);
}



class MyMaterial extends StatefulWidget {
  const MyMaterial({super.key});

  @override
  State<MyMaterial> createState() => _MyMaterialState();
}

class _MyMaterialState extends State<MyMaterial> {

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Body Language Dictionary",
        home: MyHomePage(),
      );
    }
  }
