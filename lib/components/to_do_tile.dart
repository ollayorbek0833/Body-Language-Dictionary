import 'package:flutter/material.dart';
import '../pages/opened_word.dart';

class Dictionary extends StatelessWidget {
  Dictionary(
      {super.key,
        required this.isFav,
      required this.engDefDic,
      required this.uzbDefDic,
      required this.engDic,
      required this.uzbDic,
      required this.index, required this.isSearched,});

  final bool isFav;
  final String engDic;
  final String uzbDic;
  final String engDefDic;
  final String uzbDefDic;
  final bool isSearched;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => SingleDictionary(
                index: index,
                engDic: engDic,
                isSearched: isSearched,)),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 50,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Text(
                "${engDic[0].toUpperCase()}${engDic.substring(1).toLowerCase()}",
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              Text(
                " - ${uzbDic[0].toUpperCase()}${uzbDic.substring(1).toLowerCase()}",
                style: const TextStyle(
                    color: Color(0xff4b8EEE),
                    fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}



class UzbDictionary extends StatelessWidget {
  UzbDictionary(
      {super.key,
        required this.isFav,
        required this.engDefDic,
        required this.uzbDefDic,
        required this.engDic,
        required this.uzbDic,
        required this.index, required this.isSearched,});

  final bool isFav;
  final String engDic;
  final String uzbDic;
  final String engDefDic;
  final String uzbDefDic;
  final bool isSearched;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => SingleDictionary(
              index: index,
              engDic: engDic,
              isSearched: isSearched,)),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 50,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Text(
                "${uzbDic[0].toUpperCase()}${uzbDic.substring(1).toLowerCase()}",
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              Text(
                " - ${engDic[0].toUpperCase()}${engDic.substring(1).toLowerCase()}",
                style: const TextStyle(
                    color: Color(0xff4b8EEE),
                    fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}