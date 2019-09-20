import 'package:flutter/material.dart';
import 'package:kayaking/kayakPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[Container(
          height: screenHeight,
          width: screenWidth,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/norway5.jpeg'),
              fit: BoxFit.cover
            )
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 45.0),
          child: Container(
            padding: EdgeInsets.only(left: 25.0, right: 20.0),
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Color(0xFFF3FAFC)
            ),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search all activities',
                  hintStyle: TextStyle(
                          color: Color(0xFF89969C),
                          fontFamily: 'Inconsolata',
                          fontSize: 16.0),
                      suffixIcon: Icon(Icons.search, color: Color(0xFF89969C))
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: (screenHeight / 2) - 100,
          left: (screenWidth / 2) - 75.0, 
          child: Container(
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  height: 40.0,
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xFF274B61)),
                    child: Center(
                        child: Text(
                      'How can I help you?',
                      style: TextStyle(
                          fontFamily: 'Inconsolata', 
                          color: Colors.white),
                    )),
                ),
                SizedBox(width: 15.0),
                Stack(
                  children: <Widget>[
                    Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/model.jpg',
                                ),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        top: 37.0,
                        left: 33.0,
                        child: Container(
                          height: 12.0,
                          width: 12.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              border: Border.all(
                                  color: Colors.white,
                                  width: 2.0,
                                  style: BorderStyle.solid),
                              color: Color(0xFF1DC0BF)),
                        ),
                      ),
                  ],
                )
                
              ],
            ),
          ),
        ),
        Positioned(
          top: screenHeight / 2 + 75.0,
          left: 25.0,
          right: 25.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width - 50.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Geiranger, Norway',
                          style: TextStyle(
                              fontFamily: 'Inconsolata',
                              fontSize: 17.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Icon(Icons.location_on, color: Colors.white, size: 17.0),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  height: 2.0,
                  color: Colors.white,
                ),
                SizedBox(height: 15.0),
                Text('Discover Kayaking',
                    style: TextStyle(
                        fontFamily: 'Inconsolata',
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 10.0),
                Container(
                  width: MediaQuery.of(context).size.width - 100.0,
                  child: Text(
                      'Join us for a fun, relaxed and intimate experience of the majestic Geirangerfiord. Whatever the weather is like or whatever previous paddling experience you have.',
                      style: TextStyle(
                        fontFamily: 'Inconsolata',
                        fontSize: 14.0,
                        color: Colors.white,
                      )),
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(
                              image: AssetImage('assets/norway1.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(
                              image: AssetImage('assets/norway6.jpeg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(
                              image: AssetImage('assets/norway7.jpeg'),
                              fit: BoxFit.cover)),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => KayakPage()));
                      },
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Color(0xFF1FC0C0)),
                        child: Center(
                          child: Text('38',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 17.0)),
                        ),
                      ),
                    )
                  ],
                )
            ],
          ),
        )
        ],
      ),
    );
  }
}
