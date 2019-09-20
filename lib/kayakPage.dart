import 'package:flutter/material.dart';

class KayakPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            height: screenHeight,
            width: screenWidth,
            color: Colors.white,
          ),
          Positioned(
            top: screenHeight / 2 + 75.0,
            child: Text('Kayak',
            style: TextStyle(
              fontFamily: 'Inconsolata',
              fontSize: 175.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFFF3F5F7)
            )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 30.0),
            child: Container(
              height: 50.0,
              // width: screenWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.arrow_back_ios, color: Color(0xFF274B61)),
                  Text('Single Kayak',
                  style: TextStyle(
                    fontFamily: 'Inconsolata',
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF274B61)
                  )
                  ),
                  Icon(Icons.arrow_forward_ios, color: Color(0xFF274B61)),
                ],
              ),
            ),
          ),
          Positioned(
            top: 100.0,
            left: 25.0,
            child: Container(
              width: screenWidth - 50.0,
              child: Text('We start at the kayak base at port and paddle past the Homlong Bay and towards the point where you can see the waterfall.',
              style: TextStyle(
                    fontFamily: 'Inconsolata',
                    fontSize: 14.0,
                    color: Color(0xFF8597A0)
                  )
              ),
            ),
          ),
          Positioned(
            top: 155.0,
            left: 25.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 80.0,
                          width: 80.0,
                          color: Colors.transparent,
                        ),
                        Container(
                          height: 75.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(37.5),
                            image: DecorationImage(
                              image: AssetImage('assets/model.jpg'),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        Positioned(
                          top: 45.0,
                          left: 50.0,
                          child: Container(
                            height: 24.0,
                            width: 24.0,
                            child: Center(child: Icon(Icons.info_outline)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.white
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 25.0),
                    Text('Duration',
                    style: TextStyle(
                      fontFamily: 'Inconsolata',
                      fontSize: 16.0,
                      color: Color(0xFF88969E)                    
                    )
                    ),
                    SizedBox(height: 10.0),
                    Text('2 Hours',
                    style: TextStyle(
                      fontFamily: 'Inconsolata',
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2C4B5D)                    
                    )
                    ),
                    SizedBox(height: 25.0),
                    Text('Minimum Age',
                    style: TextStyle(
                      fontFamily: 'Inconsolata',
                      fontSize: 16.0,
                      color: Color(0xFF88969E)                    
                    )
                    ),
                    SizedBox(height: 10.0),
                    Text('8 Years',
                    style: TextStyle(
                      fontFamily: 'Inconsolata',
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2C4B5D)                    
                    )
                    ),
                    SizedBox(height: 25.0),
                    Text('Available Season',
                    style: TextStyle(
                      fontFamily: 'Inconsolata',
                      fontSize: 16.0,
                      color: Color(0xFF88969E)                    
                    )
                    ),
                    SizedBox(height: 10.0),
                    Text('May to Sep.',
                    style: TextStyle(
                      fontFamily: 'Inconsolata',
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2C4B5D)                    
                    )
                    ),
                    SizedBox(height: 30.0),
                    Text('FROM',
                    style: TextStyle(
                      fontFamily: 'Inconsolata',
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2C4B5D)                    
                    )
                    ),
                    SizedBox(height: 20.0),
                    Text('\$39.99',
                    style: TextStyle(
                      fontFamily: 'Inconsolata',
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2C4B5D)                    
                    )
                    ),
                    SizedBox(height: 20.0),
                    InkWell(
                        onTap: () {},
                        child: Container(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          color: Color(0xFF44AAFB)
                        ),
                        child: Center(
                          child: Text(
                            'Book Now',
                            style: TextStyle(
                          fontFamily: 'Inconsolata',
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white                    
                      )
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                RotatedBox(
                  quarterTurns: 1,
                  child: Container(
                    height: 200.0,
                    width: 500.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/kayak2.png'),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                )
              ],
            )
          )
        ],
      ),
    );
  }
}