import 'package:ervi/models/users.dart';
import 'package:flutter/material.dart';
import 'package:ervi/screens/info.dart';
//import 'package:ervi/screens/offerService.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<User> user = initUser();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          elevation: 0.0,
          title: Text(
            'Ervi',
            style: TextStyle(
                fontFamily: 'Passion', fontSize: 28.0, color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.white,
              iconSize: 25.0,
              onPressed: () {},
            ),
          ],
        ),
        drawer: new Drawer(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                color: Colors.blue[900],
                child: Center(
                    child: Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(top: 30, bottom: 10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/user_icon.png'),
                              fit: BoxFit.fill)),
                    ),
                    Text(
                      'Shan Dela Cruz',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    )
                  ],
                )),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
              ),
              ListTile(
                leading: Icon(Icons.bookmark),
                title: Text(
                  'Bookmarked Services',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/bookmark');
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  'Account Settings',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/setting');
                },
              ),
              ListTile(
                leading: Icon(Icons.arrow_back),
                title: Text(
                  'Log Out',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: ListView(
            padding: EdgeInsets.only(
                top: 5.0, bottom: 15.0, left: 10.0, right: 10.0),
            children: <Widget>[
              Container(
                  height: 50.0,
                  color: Colors.blue[50],
                  child: Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'Offer a service now.',
                            style: TextStyle(
                                //fontFamily: 'Passion',
                                fontSize: 17.0,
                                color: Colors.black),
                          )),
                      SizedBox(width: 130),
                      IconButton(
                        icon: Icon(Icons.add),
                        color: Colors.blueGrey[900],
                        iconSize: 25.0,
                        onPressed: () {
                          Navigator.pushNamed(context, '/offerSer');
                        },
                      ),
                    ],
                  )),
              Container(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                width: MediaQuery.of(context).size.width - 30.0,
                height: MediaQuery.of(context).size.height - 150.0,
                child: GridView.builder(
                    primary: false,
                    itemCount: user.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.7,
                        crossAxisSpacing: 2.0,
                        mainAxisSpacing: 2.0),
                    itemBuilder: (context, idx) {
                      return _buildCard(user[idx].service, user[idx].name,
                          user[idx].imgPath, user[idx].desc, context);
                    }),
              ),
            ]));
  }

  List<User> initUser() {
    return [
      User(
        'Driver',
        'Daryl Deehan',
        'assets/busdriver.jpg',
        'Bus Driver',
      ),
      User(
        'AC Repair',
        'Shan Michael Olano',
        'assets/acrepair.png',
        'Also offer AC install',
      ),
      User(
        'iPhone Repair',
        'Heng De',
        'assets/technician.jpg',
        'With readily available materials',
      ),
      User(
        'Tutor',
        'Kassandra Mije',
        'assets/tutor.jpg',
        'Specialized in kinder students',
      ),
      User(
        'Singer',
        'Tipay Zafra',
        'assets/singer.jpg',
        'Sings in weddings and any party events',
      ),
      User(
        'Plumber',
        'Baby-G',
        'assets/plumber.jpg',
        'With tools on hand.',
      ),
      User(
        'Screen Printing',
        'Jhoanna Mae Services',
        'assets/screenprinting.jpg',
        'Offers tshirt printing and souvenir designing',
      ),
      User(
        'Party Organizer',
        'Sofia the First',
        'assets/partyorganizer.jpg',
        'Wedding & Birthday Organizer',
      ),
      User(
        'Construction Worker',
        'Shan Olano',
        'assets/constworker.png',
        'By work-payment or weekly-payment',
      ),
      User(
        'Maid',
        'Dangray Rodriguez',
        'assets/maid.jpg',
        'Lami muluto ug sud-an, pwede japun ako ang sudan',
      ),
      User(
        'Paintor',
        'Christa Grace Suan',
        'assets/paintor.jpg',
        "Andam mucolor sa imung kinabuhi.",
      ),
    ];
  }
}

Widget _buildCard(
    String service, String name, String imgPath, String desc, context) {
  return Padding(
      padding: EdgeInsets.only(top: 10.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Info(
                      assetPath: imgPath,
                      servicename: service,
                      erviuser: name,
                      ervidesc: desc,
                    )));
          },
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3.0,
                        blurRadius: 3.0)
                  ],
                  color: Colors.white),
              child: Column(children: [
                Hero(
                    tag: imgPath,
                    child: Container(
                        height: 150.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(5.0),
                            ),
                            image: DecorationImage(
                                image: AssetImage(imgPath),
                                fit: BoxFit.cover)))),
                // SizedBox(height: 7.0),
                Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Container(color: Colors.blueGrey[100], height: 1.0)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 7),
                    child: Text(service,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontFamily: 'SanFrancisco',
                            fontWeight: FontWeight.w800,
                            fontSize: 20.0)),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 7),
                    child: Text(name,
                        style: TextStyle(
                            color: Colors.blueGrey[700],
                            fontFamily: 'SanFrancisco',
                            fontWeight: FontWeight.w800,
                            fontSize: 13.0)),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 7, top: 3),
                    child: Text(desc,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.blueGrey[700],
                            fontFamily: 'SanFrancisco',
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0)),
                  ),
                ),
              ]))));
}
