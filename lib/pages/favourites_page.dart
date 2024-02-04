import 'package:flutter/material.dart';
import '../components/to_do_tile.dart';
import 'home_page.dart';

class Favourites extends StatefulWidget {
  Favourites({super.key, required this.favorite});

  List favorite;

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (didPop) return;
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => MyHomePage())); },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Color(0xff4b8EEE),
                ),
                onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyHomePage()));
                }),
            backgroundColor: const Color(0xff1f242a),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Color(0xff4b8EEE),
                  size: 35,
                ),
                onPressed: () {
                  showSearch(
                    context: context,
                    delegate: TaskSearchDelegate(widget.favorite),
                  );
                },
              ),
            ],
            title: const Center(
              child: Text("Body Movement Dictionary",
                  style: TextStyle(
                      color: Color(0xffE7E7E8),
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
            ),
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
                        itemCount: widget.favorite.length,
                        itemBuilder: (context, index) {
                          return Dictionary(
                            index: index,
                            engDic: widget.favorite[index][0],
                            uzbDic: widget.favorite[index][2],
                            uzbDefDic: widget.favorite[index][3],
                            engDefDic: widget.favorite[index][1],
                            isSearched: true,
                            isFav: true,
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
