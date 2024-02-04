import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import '../data/database.dart';
import 'favourites_page.dart';
import 'home_page.dart';

class SingleDictionary extends StatefulWidget {
  SingleDictionary({super.key, required this.index, required this.engDic, required this.isSearched});
  late final int index;
  final bool isSearched;
  final String engDic;

  @override
  State<SingleDictionary> createState() => _SingleDictionaryState();
}

class _SingleDictionaryState extends State<SingleDictionary> {
  final _myBox = Hive.box('myBox');
  DataBase db = DataBase();


  @override
  void initState() {
    if (_myBox.get("TODOLIST") == null) {
      db.createInitialData();
    } else {
      db.loadData();
    }
    super.initState();
  }

  void favTask(int index, bool value) {
    setState(() {
      db.toDoList[index][4] = value.toString();
    });
    db.updateDataBase();
  }
  @override
  Widget build(BuildContext context) {
    int index=widget.index;
    if(widget.isSearched){
      for(int i=0;i<=379;i++){
        if(db.toDoList[i][0]==widget.engDic){
          index = i;
        }
      }
    }

    List favouriteDictionoaries = [];
    String engDic = db.toDoList[index][0];
    String engDefDic = db.toDoList[index][1];
    String uzbDic = db.toDoList[index][2];
    String uzbDefDic = db.toDoList[index][3];
    bool isFav = db.toDoList[index][4].toString()=="true";
    for (List<String> innerList in db.toDoList) {
      if (innerList.last == "true") {
        favouriteDictionoaries.add(innerList);
      }
    }
    return SafeArea(
      child: PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          if (didPop) return;
          if(isFav){
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => Favourites(favorite: favouriteDictionoaries)));
          }else{
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => MyHomePage()));
          }
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff1f242a),
            title: Text(
              engDic,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xffE7E7E8)),
            ),
            actions: [
              IconButton(
                  onPressed: ()=> {
                    setState(() {
                      print(isFav);
                      isFav = !isFav;
                      print(isFav);
                      favTask(index, isFav);
                    }),
                  },
                  icon: Icon(
                    isFav ? Icons.favorite : Icons.favorite_border,
                    color: const Color(0xff4b8EEE),
                  ))
            ],
            leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Color(0xff4b8EEE),
                ),
                onPressed: () {
                  if(isFav){
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Favourites(favorite: favouriteDictionoaries)));
                  }else{
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyHomePage()));
                  }
                }),
          ),
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff1f242a), Color(0xff191713)],
                // Adjust colors as needed
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: ListView(children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "English:",
                style: GoogleFonts.montserrat(
                    color: const Color(0xff4b8EEE), fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                engDic,
                style: GoogleFonts.montserrat(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xffE7E7E8)),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Definition:",
                style: GoogleFonts.montserrat(
                    color: const Color(0xff727272), fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(engDefDic,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                  textAlign: TextAlign.start),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 5,
                color: const Color(0xff4b8EEE),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Uzbek:",
                style: GoogleFonts.montserrat(
                    color: const Color(0xff4b8EEE), fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                uzbDic,
                style: GoogleFonts.montserrat(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Izoh:",
                style: GoogleFonts.montserrat(
                    color: const Color(0xff727272), fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                uzbDefDic,
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 20,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
