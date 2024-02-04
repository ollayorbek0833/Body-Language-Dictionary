import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../components/to_do_tile.dart';
import '../data/database.dart';
import 'author_page.dart';
import 'favourites_page.dart';
import 'opened_word.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _myBox = Hive.box('myBox');
  List filteredDictionaries = [];
  List favouriteDictionoaries = [];
  bool isUzb=false;
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

  void openWord(int index) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => SingleDictionary(
          index: index,
          engDic: "engDic",
          isSearched: false,
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    for (List<String> innerList in db.toDoList) {
      if (innerList.last == "true") {
        favouriteDictionoaries.add(innerList);
      }
    }
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: const Color(0xff1f242a),
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 20),
                height: 120,
                child: Text(
                  "Body Movement Dictionary",
                  style:
                      GoogleFonts.robotoSlab(color: Colors.white, fontSize: 24),
                ),
                color: Color(0xff191713),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Favourites(
                                  favorite: favouriteDictionoaries,
                                )));
                  },
                  child: Row(
                    children: [
                      Text("Saved Dictionaries",
                          style: GoogleFonts.openSans(
                              color: Colors.white, fontSize: 20)),
                      const Spacer(),
                      Icon(
                        Icons.star_rate,
                        color: Color(0xff4b8EEE),
                        size: 28,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Author()));
                  },
                  child: Row(
                    children: [
                      Text("About Author",
                          style: GoogleFonts.openSans(
                              color: Colors.white, fontSize: 20)),
                      const Spacer(),
                      Icon(
                        Icons.person,
                        color: Color(0xff4b8EEE),
                        size: 28,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Color(0xff4b8EEE),
                  size: 24,
                ),
                // Use a different icon if needed
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          backgroundColor: const Color(0xff1f242a),
          actions: [
            IconButton(
              iconSize: 24,
              icon: Icon(
                Icons.translate,
                color: Color(0xff4b8EEE),
              ),
              onPressed: () {
                setState(() {
                  isUzb = !isUzb;
                });
                print(isUzb);
              },
            ),
            IconButton(
              iconSize: 24,
              icon: const Icon(
                Icons.search,
                color: Color(0xff4b8EEE),
              ),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: isUzb? UzbSearchDelegate(db.toDoList): TaskSearchDelegate(
                    db.toDoList,
                  ),
                );
              },
            ),
          ],
          title: Text("Body Movement Dictionary",
              style: TextStyle(
                  color: Color(0xffE7E7E8),
                  fontWeight: FontWeight.bold,
                  fontSize: 18)),
        ),
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff1f242a), Color(0xff191713)],
                // Adjust colors as needed
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                      itemCount: db.toDoList.length,
                      itemBuilder: (context, index) {
                        return isUzb? UzbDictionary(
                          index: index,
                          engDic: db.toDoList[index][0],
                          uzbDic: db.toDoList[index][2],
                          uzbDefDic: db.toDoList[index][3],
                          engDefDic: db.toDoList[index][1],
                          isSearched: false,
                          isFav: db.toDoList[index][4] == "true",
                        ): Dictionary(
                          index: index,
                          engDic: db.toDoList[index][0],
                          uzbDic: db.toDoList[index][2],
                          uzbDefDic: db.toDoList[index][3],
                          engDefDic: db.toDoList[index][1],
                          isSearched: false,
                          isFav: db.toDoList[index][4] == "true",
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TaskSearchDelegate extends SearchDelegate {
  final List<dynamic> tasks;

  TaskSearchDelegate(this.tasks);

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      textTheme: const TextTheme(
        titleLarge: TextStyle(fontSize: 18.0, color: Color(0xffE7E7E8)),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xff1f242a),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: InputBorder.none,
        hintStyle: TextStyle(fontSize: 18.0, color: Colors.white),
      ),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear, color: Color(0xff4b8EEE)),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios_new, color: Color(0xff4b8EEE)),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildSuggestions(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<dynamic> suggestionList = query.isEmpty
        ? tasks
        : tasks
            .where((task) =>
                task[0].toString().toLowerCase().contains(query.toLowerCase()))
            .toList();

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff1f242a), Color(0xff191713)],
          // Adjust colors as needed
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) {
          return Dictionary(
            isFav: suggestionList[index][4] == "true",
            engDefDic: suggestionList[index][1],
            uzbDefDic: suggestionList[index][3],
            engDic: suggestionList[index][0],
            uzbDic: suggestionList[index][2],
            index: index,
            isSearched: true,
          );
        },
      ),
    );
  }
}

class UzbSearchDelegate extends SearchDelegate {
  final List<dynamic> tasks;

  UzbSearchDelegate(this.tasks);

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      textTheme: const TextTheme(
        titleLarge: TextStyle(fontSize: 18.0, color: Color(0xffE7E7E8)),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xff1f242a),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: InputBorder.none,
        hintStyle: TextStyle(fontSize: 18.0, color: Colors.white),
      ),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear, color: Color(0xff4b8EEE)),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios_new, color: Color(0xff4b8EEE)),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildSuggestions(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<dynamic> suggestionList = query.isEmpty
        ? tasks
        : tasks
            .where((task) =>
                task[2].toString().toLowerCase().contains(query.toLowerCase()))
            .toList();

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff1f242a), Color(0xff191713)],
          // Adjust colors as needed
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) {
          return UzbDictionary(
            isFav: suggestionList[index][4] == "true",
            engDefDic: suggestionList[index][1],
            uzbDefDic: suggestionList[index][3],
            engDic: suggestionList[index][0],
            uzbDic: suggestionList[index][2],
            index: index,
            isSearched: true,
          );
        },
      ),
    );
  }
}
