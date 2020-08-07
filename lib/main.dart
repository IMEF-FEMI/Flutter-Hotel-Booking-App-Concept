import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: Theme.of(context).copyWith(
        scaffoldBackgroundColor: Color(0xfff7f7f8),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xfff7f7f8),
          // leading: Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Icon(
          //     Icons.sort,
          //     size: 35,
          //     color: Colors.black,
          //   ),
          // ),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 0),
                  child: Icon(
                    Icons.sort,
                    size: 35,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Text(
                "Find \nYour Stay",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
              ),
            ),
            hotelPreview(),
            checkInInfo(),
            SizedBox(height: 20,),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color(0xff7166f9),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 23.0),
                    child: Text(
                      "Find Stay",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ));
  }

  Padding checkInInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
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
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              checkInListTile(true, "Location", "Location"),
              SizedBox(
                height: 20,
              ),
              Row(
                // mainAxisSize: MainAxisSize.max,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                      flex: 2,
                      child: checkInListTile(true, "Check in", "01.08.2020")),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 60,
                      child: VerticalDivider(
                        width: 1,
                        color: Color(0xfff0f0f0),
                        thickness: 2,
                      ),
                    ),
                  ),
                  Expanded(
                    child: checkInListTile(false, "Check out", "10.08.2020"),
                  ),
                ],
              ),
              // checkInListTile(true, "Check in", "01.08.2020"),
              checkInListTile(true, "Person", "1 adult"),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  ListTile checkInListTile(bool leading, String title, String subtitle) {
    if (leading)
      return ListTile(
        leading: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color(0xfff9f5ff)),
          child: Icon(
            Icons.location_on,
            size: 30,
            color: Color(0xff7166f9),
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 1,
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: Colors.grey,
            ),
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 17,
              color: Color(0xff000000)),
        ),
        onTap: () {},
      );
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 1,
      ),
      title: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.normal,
            color: Colors.grey,
          ),
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Color(0xff000000)),
      ),
      onTap: () {},
    );
  }

  Padding hotelPreview() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
      child: Container(
        height: 160,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(.1),
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0, 2))
          ],
          color: Color(0xffc6e6ff),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  'Last search ',
                  style: TextStyle(
                      fontWeight: FontWeight.normal, color: Color(0xff7781ba)),
                ),
              ),
              subtitle: Text(
                'Washington, 12.07 - 14.07, 2 adults',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                    color: Color(0xff2b3877)),
              ),
              trailing: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Color(0xff7d75ff),
                ),
                child: Icon(Icons.arrow_forward, size: 25, color: Colors.white),
              ),
              onTap: () {},
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Row(
                children: <Widget>[
                  hotelsPreviewCard("assets/hotel4.jpg"),
                  SizedBox(width: 10),
                  hotelsPreviewCard("assets/hotel2.jpg"),
                  SizedBox(width: 10),
                  hotelsPreviewCard("assets/hotel3.jpg"),
                  SizedBox(width: 10),
                  hotelsPreviewCard("assets/hotel1.jpg"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container hotelsPreviewCard(String img) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover,
          )),
    );
  }
}
