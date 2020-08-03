import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyProfilePage(),
    );
  }
}

var color1 = Color(0xFFa572c0);
var color2 = Color(0xFF6559d4);
var profileImage = Image.asset("assets/profil.jpeg");

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 8.0,
          ),
          UpperSection(),
          SizedBox(
            height: 32.0,
          ),
          OrtaSekme(),
          Spacer(),
          AltSekme(),
        ],
      ),
    );
  }
}

class AltSekme extends StatelessWidget {
  const AltSekme({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      color: color1.withOpacity(0.2),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text("Security & Data"),
                SizedBox(
                  width: 16.0,
                ),
                Text("Setings"),
              ],
            ),
            Text("Help"),
          ],
        ),
      ),
    );
  }
}

class OrtaSekme extends StatelessWidget {
  const OrtaSekme({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: <Widget>[
          Divider(
            height: 8.0,
          ),
          ListTile(
            title: Text("Today's activity"),
            subtitle: Text("31 tasks in 5 categories"),
            trailing: ClipOval(
              child: Container(
                height: 40,
                width: 40,
                color: Colors.green.withOpacity(0.2),
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Container(
              height: 160.0,
              child: ListView(
                padding: EdgeInsets.all(0.0),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  NewCard(Icons.favorite, "Healt", "2 tasks"),
                  NewCard(Icons.mobile_screen_share, "Mobile", "3 tasks"),
                  NewCard(Icons.power, "Power", "2 tasks"),
                  NewCard(Icons.web, "Web", "3 tasks"),
                  NewCard(Icons.games, "Game", "2 tasks"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NewCard extends StatelessWidget {
  final icon;
  final name;
  final tasks;
  const NewCard(this.icon, this.name, this.tasks);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        height: 160.0,
        width: 120.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [color1, color2],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                icon,
                color: Colors.white,
              ),
              Spacer(),
              Text(
                name,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                tasks,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UpperSection extends StatelessWidget {
  const UpperSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 16.0,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.menu,
                    color: color1,
                  ),
                  Icon(
                    Icons.settings,
                    color: color1,
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              CircleAvatar(
                backgroundImage: profileImage.image,
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                "Bilal Karademir",
                style: TextStyle(fontSize: 24.0),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                "Game Developer",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Container(
            height: 4.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [color1, color2],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32.0, right: 32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "54",
                    style: TextStyle(fontSize: 24.0),
                  ),
                  Text(
                    "created",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "task",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    "38",
                    style: TextStyle(fontSize: 24.0),
                  ),
                  Text(
                    "Completed",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "task",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    "27",
                    style: TextStyle(fontSize: 24.0),
                  ),
                  Text(
                    "Reached",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "goals",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
