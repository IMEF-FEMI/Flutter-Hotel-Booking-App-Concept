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
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 65),
          child: Icon(
            Icons.sort,
            size: 35,
            color: Colors.black,
          ),
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
          child: Container(
            height: 150,
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
                  isThreeLine: true,
                  leading: CircleAvatar(
                    radius: 27,
                    backgroundColor: Colors.grey[500],
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/ol1.jpeg'),
                      radius: 25,
                    ),
                  ),
                  contentPadding: EdgeInsets.all(0),
                  title: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'Gustavo Kenter ',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                  subtitle: Text(
                    'Designer',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        .copyWith(fontWeight: FontWeight.w300),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    size: 40,
                    color: Color(0xff7d75ff),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
