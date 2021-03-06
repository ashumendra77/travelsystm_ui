import 'package:flutter/material.dart';
import 'package:travelsystem_ui/model.dart';

class MySecondPage extends StatefulWidget {
  @override
  _MySecondPageState createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  List<String> barItem = ["All", "New", "Most Viewed", "Recomendaed"];
  List<String> list = [
    "images/1.jpeg",
    "images/2.jpeg",
    "images/3.jpeg",
    "images/4.jpeg"
  ];
  int selectbarItem = 0;

  Widget getBarItem(int index) {
    return GestureDetector(
      onTap: () {
        selectbarItem = index;
        setState(() {});
      },
      child: Container(
        height: 50,
        //  width: 100,
        // margin: EdgeInsets.only(left: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Text(
                barItem[index],
                style: TextStyle(
                    fontSize: 18,
                    color: selectbarItem == index ? Colors.pink : Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 5,
              // width: 10,
            ),
            CircleAvatar(
              backgroundColor:
                  selectbarItem == index ? Colors.pink : Colors.transparent,
              radius: 3,
            )
          ],
        ),
      ),
    );
  }

  Widget getTavel(TravelDetail travelItem) {
    return GestureDetector(
      onTap: () => debugPrint("p"),
      child: Row(
        children: <Widget>[
          Container(
            height: 250,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(travelItem.imageUrl), fit: BoxFit.fill)),
            child: Padding(
              padding: EdgeInsets.only(left: 15.0, top: 160),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 19.0, left: 5),
                    child: Text(
                      "The Beach Haven",
                      maxLines: 2,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.location_on),
                      Text(
                        "Andaman",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 15)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CircleAvatar(
                      child: Text("A"),
                    ),
                    Icon(
                      Icons.toc,
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 110),
                child: Text(
                  "Let's enjoy your vacation!",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                margin: EdgeInsets.only(left: 15, right: 15, top: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300]),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          hintText: "Type here for search",
                          focusedBorder: InputBorder.none,
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 20)),
                      autofocus: false,
                    )),
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () => debugPrint("search"),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  for (var item in list)
                    Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(item), fit: BoxFit.fill),
                        )),
                ],
              ),
              SizedBox(height: 20),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children:
                        barItem.toList().asMap().entries.map((MapEntry map) {
                      return getBarItem(map.key);
                    }).toList(),
                  )),
              SizedBox(height: 20),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children:
                        travellist.toList().asMap().entries.map((MapEntry map) {
                      return getTavel(map.value);
                    }).toList(),
                  )),
              SizedBox(height: 10)
            ],
          )
        ],
      )),
    );
  }
}
