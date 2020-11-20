import 'package:flutter/material.dart';

class UserOfferService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue[900], title: Text('Offer Services')),
      body: OfferService(),
    );
  }
}

class OfferService extends StatefulWidget {
  @override
  _OfferServiceState createState() => _OfferServiceState();
}

class _OfferServiceState extends State<OfferService> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              _nameService(),
              _priorityDescService(),
              _lblDescService(),
              _descService(),
              _lblphotoService(),
              _photoService()
            ],
          ),
        ),
      ],
    );
  }

  Widget _nameService() => TextFormField(
        decoration: InputDecoration(labelText: 'Name of Service'),
      );

  Widget _priorityDescService() => TextFormField(
        decoration: InputDecoration(labelText: 'Priority Description'),
      );

  Widget _lblDescService() => Container(
        padding: EdgeInsets.fromLTRB(0, 25, 150, 0),
        child: Text(
          "Description of your Service",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              //fontFamily: 'Passion',
              fontSize: 15.0,
              color: Colors.black),
        ),
      );

  Widget _descService() => Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(bottom: 1),
        child: TextField(
          maxLines: 7,
          decoration: InputDecoration(
            hintText: "Make your description stand out from the most. ",
            border: OutlineInputBorder(),
          ),
        ),
      );

  Widget _lblphotoService() => Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0, 25, 150, 0),
            child: Text(
              'Photo of your Service.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  //fontFamily: 'Passion',
                  fontSize: 15.0,
                  color: Colors.black),
            ),
          ),
        ],
      );

  Widget _photoService() => Row(
        children: <Widget>[
          Container(
            child: Image.asset(
              'assets/truckdriver.jpg',
              height: 70,
              width: 70,
            ),
            padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
          ),
          Container(
            child: Image.asset(
              'assets/truckdriver2.jpg',
              height: 70,
              width: 70,
            ),
            padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
          ),
          Container(
            child: Image.asset(
              'assets/singer.jpg',
              height: 70,
              width: 70,
            ),
            padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
          ),
        ],
      );
}
