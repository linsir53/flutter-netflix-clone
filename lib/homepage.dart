import 'package:flutter/material.dart';
import 'theme.dart' as Theme;
import 'package:carousel_slider/carousel_slider.dart';
import 'widget/drawer.dart';
final List<String> imgList = [
  'https://static1.squarespace.com/static/51b3dc8ee4b051b96ceb10de/t/5c619c18e2c48342d7159622/1549900830284/?format=2500w',
  'http://movieposterhd.com/wp-content/uploads/2019/01/Spider-Man-Into-the-Spider-Verse-2018-Movie-Wallpaper.jpg',
  'https://hdwallsource.com/img/2019/2/alita-battle-angel-hd-background-wallpaper-67047-69343-hd-wallpapers.jpg',
  'https://visualcocaine.org/public/uploads/large/11522410033cp563dobwduvka23hlfml0yin3ghbktcgx7tuy104znglfr9rqd0kajvo0jugpitdqvubjlm1qrzvgyta4ywbwssfzcl9gevcm2t.jpg',
  'http://images.fandango.com/images/fandangoblog/edgeoftomorrowposter800.jpg',
  'https://www.thewrap.com/wp-content/uploads/2014/07/Iron-Man-3-Highest-Grossing-Films.jpg'
];

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerPage(),
      backgroundColor: Theme.Colors.background,
      body: Container(
        // height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 40, 35, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                       onPressed: () => _scaffoldKey.currentState.openDrawer(),
                      icon: Icon(Icons.menu, color: Colors.black),
                    ),
                    Image(
                      image: NetworkImage(
                        "https://image.tmdb.org/t/p/original/wwemzKWzjKYJFfCeiB57q3r4Bcm.png",
                      ),
                      height: 20,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              buildSlider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: Container(
                  height: 90,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      buildCircle(
                          "http://movieposterhd.com/wp-content/uploads/2019/01/Spider-Man-Into-the-Spider-Verse-2018-Movie-Wallpaper.jpg",
                          "DISCOVER"),
                      buildCircle(
                          "https://static1.squarespace.com/static/51b3dc8ee4b051b96ceb10de/t/5c619c18e2c48342d7159622/1549900830284/?format=2500w",
                          "CATEGORIES"),
                      buildCircle(
                          "http://images.fandango.com/images/fandangoblog/edgeoftomorrowposter800.jpg",
                          "FAVOURITE"),
                      buildCircle(
                          "https://www.thewrap.com/wp-content/uploads/2014/07/Iron-Man-3-Highest-Grossing-Films.jpg",
                          "COLLECTION"),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,20),
                child: buildTitle("My List"),
              ),
            Container(
             
              height: 150,
              child:ListView(scrollDirection: Axis.horizontal,children: <Widget>[
                buildPoster("https://i.pinimg.com/originals/cd/61/5f/cd615ff7b503ae52d4f5976e9ef5e02f.jpg"),
                buildPoster("https://upload.wikimedia.org/wikipedia/en/thumb/0/00/Us_%282019%29_theatrical_poster.png/220px-Us_%282019%29_theatrical_poster.png"),
                buildPoster("http://static1.squarespace.com/static/54340dc0e4b0dbdd49fecf22/543c2368e4b00e9d5a4d20e2/5c746a2115fcc0599c88348a/1551133424838/how+to+train+your+dragon+3.jpg?format=1500w"),
                buildPoster("https://www.dvdsreleasedates.com/posters/800/C/Captain-Marvel-2019-movie-poster.jpg"),

              ],) ,) ,
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: buildTitle("Popular on Netflix"),
                ), 
                Container(
              height: 150,
              child:ListView(scrollDirection: Axis.horizontal,children: <Widget>[
                buildPoster("http://hdqwalls.com/download/poster-avengers-endgame-2019-ps-2160x3840.jpg"),
                buildPoster("https://www.joblo.com/assets/images/joblo/posters/2019/04/godzilla_king_of_the_monsters_ver9_xlg_thumb.jpg"),
                buildPoster("https://assets3.thrillist.com/v1/image/2794892/size/tmg-article_tall;jpeg_quality=20.jpg"),
                buildPoster("https://m.media-amazon.com/images/M/MV5BZDkyMTc1YWMtYzJhYy00MDhjLWFlZjItOGQ1NTgxYzFhY2JjXkEyXkFqcGdeQXVyNzYwNzAxMjM@._V1_SY1000_CR0,0,674,1000_AL_.jpg"),

              ],) ,) ,
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSlider() {
    return CarouselSlider(
      autoPlay: true,
      scrollDirection: Axis.horizontal,
      enlargeCenterPage: true,
      height: 200.0,
      items: imgList.map((i) {
        return Builder(builder: (BuildContext context) {
          return Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    new BoxShadow(
                        color: Colors.black87,
                        blurRadius: 5,
                        offset: Offset(0, 5)),
                  ],
                  image: DecorationImage(
                      image: NetworkImage(i), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15)),
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(15, 0, 15, 20));
        });
      }).toList(),
    );
  }

  Widget buildCircle(url, name) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 10, 10),
      child: Container(
        child: Center(
          child: Text(
            name,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              new BoxShadow(
                  color: Colors.red, blurRadius: 3, offset: Offset(0, 4)),
            ],
            image: DecorationImage(
                image: NetworkImage(
                  url,
                ),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.red[900], BlendMode.screen))),
      ),
    );
  }

  Widget buildTitle(name) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward, color: Colors.black),
          )
        ],
      ),
    );
  }

  Widget buildPoster(url) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20,0,10,10),
      child: Container(
        width: 110,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              new BoxShadow(
                  color: Colors.black, blurRadius: 3, offset: Offset(1, 4)),
            ],
            image: DecorationImage(
              image: NetworkImage(
                url,
              ),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
