import 'package:body_movement_dictionary/pages/home_page.dart';
import 'package:flutter/material.dart';

class Author extends StatefulWidget {
  const Author({super.key});

  @override
  State<Author> createState() => _AuthorState();
}

class _AuthorState extends State<Author> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyHomePage()));
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff1f242a),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) => MyHomePage()));
                    }, icon: Icon(Icons.arrow_back_ios, color: Color(0xff4b8EEE),)),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(right: size.width/2-80),
                        color: Color(0xff1f242a),
                        height: 180,
                        width: 160,
                        child: CircleAvatar(
                          radius: 80,
                          backgroundImage: AssetImage("images/pic.JPG"),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff191713),
                        Color(0xff1f242a),
                      ],
                      // Adjust colors as needed
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 20,),
                      Text("About author / Muallif haqida", style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold,fontSize: 22),),
                      const SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                            "Avezova Nigora Safarovna Toshkent davlat jahon tillari universitetida Media va Kommunikatsiya fakulteti  Ikkinchi chet tili kafedrasida katta o’qituvchi lavozimida ishlab kelmoqda.\n\n  H.S.Avezovaning  f.f.d. (DSc) dotsent Sh.M. Hamroyeva rahbarligidagi  “O’zbek va ingliz tillarida inson tana a’zolari harakatini ifodalovchi leksemalar tipologiyasi” deb nomlangan filologiya fanlari bo'yicha falsafa doktori (PhD) dissertasiyasi mavzusi O’zbekiston Respublikasi Oliy attestasiya komissiyasida  ro'yxatga olingan.\n\n  Tadqiqot natijalari 18 ta Respublika hamda xorijiy ilmiy-amaliy anjumanlarda, ma'ruza ko’rinishida bayon etilgan hamda aprobasiyadan o’tkazilgan. Shuningdek, dissertasiya mavzusi bo’yicha 11 ta ilmiy maqola (shundan 2 tasi xalqaro ilmiy jurnallarda) chop etilgan.",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      const SizedBox(height: 20,)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
