import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        brightness: Brightness.light,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add,size: 30,color: Colors.white,),
          backgroundColor: Colors.blue[800],
          onPressed:(){}
      ),
      bottomNavigationBar: new BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        child: new SizedBox(
          height: 70,
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: const EdgeInsets.symmetric(horizontal: 15)),
              Icon(Icons.home,size: 35,color: Colors.blue[800],),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 30)),
              Icon(Icons.label,size: 35,color: Colors.grey[800],),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 50)),
              Icon(Icons.notifications,size: 35,color: Colors.grey[800],),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 30)),
              Icon(Icons.person,size: 35,color: Colors.grey[800],),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top : 60),
              child: Card(
                  color: Colors.white,
                  elevation: 20,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    child: TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.search,color: Colors.black54,size: 30),
                          hintText: "Search...",
                          hintStyle: TextStyle(fontSize: 20,color: Colors.black54,fontWeight: FontWeight.bold),
                          suffixIcon: Icon(Icons.filter_list,color: Colors.black54,size: 30,)
                      ),
                    ),
                  )
              ),
            ),
            Padding(padding: EdgeInsets.only(top:25)),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left : 10)),
                Expanded(child: Text("Trending Restaurants",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold,))),
                Text("See all (40)",style: TextStyle(fontSize: 15,color: Colors.blue[800]),),
                Padding(padding: EdgeInsets.only(right : 5)),
              ],
            ),
            Padding(padding: EdgeInsets.only(top:5)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              child: Image.asset("assests/food1.jpeg",height: 200,width: 340,fit: BoxFit.fitWidth,),
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            ),
                            Row(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                                  child: Container(
                                    color: Colors.white70,
                                    padding: EdgeInsets.all(5),
                                    child: Text("OPEN",style: TextStyle(fontSize: 15,color: Colors.green[800],fontWeight: FontWeight.bold),),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.symmetric(horizontal: 110)),
                                Card(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                                  child: Container(
                                      color: Colors.white70,
                                      padding: EdgeInsets.all(5),
                                      child: Row(
                                        children: [
                                          Icon(Icons.star,size: 15,color: Colors.yellow[800],),
                                          Padding(padding: const EdgeInsets.symmetric(horizontal: 1)),
                                          Text("4.5",style: TextStyle(fontSize: 15,color: Colors.grey[800],fontWeight: FontWeight.bold),),
                                        ],
                                      )
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Text("Happy Jones",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                              Padding(padding: EdgeInsets.only(top: 10)),
                              Text("1278 Loving Acres Road Kansas City,MO 64110",style: TextStyle(fontSize: 15,color: Colors.grey[800]),),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              child: Image.asset("assests/food2.jpeg",height: 200,width: 340,fit: BoxFit.fitWidth,),
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            ),
                            Row(
                              children: [
                                Card(
                                  child: Container(
                                    color: Colors.white70,
                                    padding: EdgeInsets.all(5),
                                    child: Text("OPEN",style: TextStyle(fontSize: 15,color: Colors.green[800],fontWeight: FontWeight.bold),),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.symmetric(horizontal: 110)),
                                Card(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                                  child: Container(
                                      color: Colors.white70,
                                      padding: EdgeInsets.all(5),
                                      child: Row(
                                        children: [
                                          Icon(Icons.star,size: 15,color: Colors.yellow[800],),
                                          Padding(padding: EdgeInsets.symmetric(horizontal: 1)),
                                          Text("4.5",style: TextStyle(fontSize: 15,color: Colors.grey[800],fontWeight: FontWeight.bold),),
                                        ],
                                      )
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Text("Urban Jones",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                              Padding(padding: EdgeInsets.only(top: 10)),
                              Text("4823 Loving Acres Road Kansas City,MO 64110",style: TextStyle(fontSize: 15,color: Colors.grey[800]),),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsetsDirectional.only(top: 10)),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 10)),
                Expanded(child: Text("Category",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold,))),
                Text("See all (9)",style: TextStyle(fontSize: 15,color: Colors.blue[800]),),
                Padding(padding: EdgeInsets.only(right: 5)),
              ],
            ),
            Padding(padding: EdgeInsets.only(top:5)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Stack(
                      children: [
                        ClipRRect(
                          child: Image.asset("assests/food1.jpeg",height: 200,width: 340,fit: BoxFit.fitWidth,),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        Container(
                          height: 200,width: 340,
                          color: Colors.black38,
                          alignment: Alignment.center,
                          child: Text("Italian",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Stack(
                      children: [
                        ClipRRect(
                          child: Image.asset("assests/food2.jpeg",height: 200,width: 340,fit: BoxFit.fitWidth,),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        Container(
                          height: 200,width: 340,
                          color: Colors.black38,
                          alignment: Alignment.center,
                          child: Text("Chinese",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}