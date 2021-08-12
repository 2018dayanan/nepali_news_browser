import 'package:flutter/material.dart';
import 'package:nepali_news/newsView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nepali News',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // const MyHomePage({Key? key}) : super(key: key);

  final String kantipur = "https://ekantipur.com/";
  final String ktitle = "KANTIPUR NEWS";

  final String kathmandupost = "https://kathmandupost.com/";
  final String ktmPTitle = "THE KATHMANDU POST";

  final String theHT = "https://thehimalayantimes.com/";
  final String theHiTTitle = "THE HIMALAYAN TIMES";

  final String bbc = "https://www.bbc.com/nepali";
  final String bbcTitile = "BBC NEPALI NEWS";

  final String techPatro = "https://techpatro.com/";
  final String tpTitle = "TECH PATRO";

  final String techPana = "https://www.techpana.com/";
  final String techpanaTitle = "TECH PANA";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Nepali News",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600]),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NewsView(
                              newsUrl: kantipur,
                              title2: ktitle,
                            )));
              },
              child: MyMenu(
                  title: "kantipur news",
                  icon: Icons.laptop_mac,
                  icolor: Colors.grey),
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewsView(
                                newsUrl: kathmandupost,
                                title2: ktmPTitle,
                              )));
                },
                child: MyMenu(
                    title: "KTM POST",
                    icon: Icons.laptop_mac,
                    icolor: Colors.grey)),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewsView(
                                newsUrl: theHT,
                                title2: theHiTTitle,
                              )));
                },
                child: MyMenu(
                    title: "Himalayan Times",
                    icon: Icons.laptop_mac,
                    icolor: Colors.grey)),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewsView(
                                newsUrl: bbc,
                                title2: bbcTitile,
                              )));
                },
                child: MyMenu(
                    title: "bbc nepali",
                    icon: Icons.laptop_mac,
                    icolor: Colors.grey)),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewsView(
                                newsUrl: techPatro,
                                title2: tpTitle,
                              )));
                },
                child: MyMenu(
                    title: "tech patro",
                    icon: Icons.laptop_mac,
                    icolor: Colors.grey)),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewsView(
                                newsUrl: techPana,
                                title2: techpanaTitle,
                              )));
                },
                child: MyMenu(
                    title: "tech pana",
                    icon: Icons.laptop_mac,
                    icolor: Colors.grey))
          ],
        ),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  final String title;
  final IconData icon;
  final MaterialColor icolor;
  MyMenu({
    required this.title,
    required this.icon,
    required this.icolor,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      color: Colors.grey[200],
      elevation: 2.0,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              icon,
              size: 60.0,
              color: icolor,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                title.toUpperCase(),
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
