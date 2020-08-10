import 'package:flutter/material.dart';

final List<String> imgList = [
  'assets/hotel1.jpg',
  'assets/hotel2.jpg',
  'assets/hotel3.jpg',
  'assets/hotel5.jpg',
];

class HotelDetails extends StatefulWidget {
  @override
  _HotelDetailsState createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {
  int _current = 0;

  final List<Widget> imageSliders = imgList
      .map((item) => ClipRRect(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15.0),
              bottomLeft: Radius.circular(15.0)),
          child: Image.asset(
            item,
            fit: BoxFit.cover,
            width: 500,
            height: 350,
          )))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            child: Stack(
              // fit: StackFit.loose,
              children: <Widget>[
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25)),
                    image: DecorationImage(
                      image: AssetImage("assets/hotel0.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    top: 30,
                    left: 20,
                    child: InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color(0xffcbe5f1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Icon(
                          Icons.arrow_back,
                          size: 32,
                        ),
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.map((url) {
              int index = imgList.indexOf(url);
              return Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      _current == index ? Color(0xff7166f9) : Color(0xffe7e5f1),
                ),
              );
            }).toList(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Text(
              "Signature Townhouse \nLondon Hyde Park",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Text(
              "The romantic London Gards Hotel is the best \nway to experience London, Relax in rooms \nwith flatscreen TVs, air conditioning and \nwork desks",
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: Colors.grey,
                    // fontWeight: FontWeight.w200,
                  ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Container(
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(.1),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 2))
                ],
                color: Colors.white,
              ),
              child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ListTile(
                    leading: Container(
                      height: 60,
                      width: 60,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 10),
                        child: Text(
                          "🔥",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 1,
                    ),
                    title: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(
                        "Rating 4.5",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: Color(0xff000000)),
                      ),
                    ),
                    subtitle: Text(
                      "728 reviews ",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    onTap: () {},
                  )),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              color: Colors.white,
            ),
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 1,
                        ),
                        title: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Text(
                            "\$450",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 26,
                                color: Color(0xff000000)),
                          ),
                        ),
                        subtitle: Text(
                          "For 9 nights",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Color(0xff7166f9),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 23.0),
                          child: Text(
                            "Book",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
